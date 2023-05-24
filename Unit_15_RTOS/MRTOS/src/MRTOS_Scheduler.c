/**
* @file MRTOS_Scheduler.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief this file contain MRTOS services.
* @version 0.1
* @date 2023-05-01
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"

#include "../MRTOS/inc/MRTOS_Porting.h"
#include "../MRTOS/inc/MRTOS_Scheduler.h"
#include "../MRTOS/inc/queueInterfaces.h"

/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

#define SAFTY_SPACE_BETWEEN_STACKS	4
#define START_OF_STACK_IN_HW	_estack
#define START_OF_HEAP_IN_HW	    _eheap
#define MIN_STACK_SIZE			16*4

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/


//	-				-
//	- _S_PSP_Task	-
//	-	Task Stack	-
//	- _E_PSP_Task	-
//	-				-
//	- _eheap		-
//	-				-
//
#define CHECK_STACK_OVF(ADDRESS)		if( ADDRESS < (u32)&START_OF_HEAP_IN_HW)	\
												LOC_MRTOS_ErrorID = StackOverflow

// Decrease The SP of Task in Current PSP
#define DECREASE_PC_BY(TSK_REF, NUM)	TSK_REF->taskPrivateStates.pCurrentPSP -=NUM
#define INCREASE_PC_BY(TSK_REF, NUM)	TSK_REF->taskPrivateStates.pCurrentPSP +=NUM


//	DUMMY_XPSR should T =1 to avoid BUS fault
#define RST_xPSR	(u32)0x01000000
//	(EXC_RETURN) Return to thread with PSP stack as stack area
#define RST_LR		(u32)0xFFFFFFFD


/******************************************************************************
* Typedefs
*******************************************************************************/

/**
 * @brief Operating Systm States 
 * 
 */
typedef enum
{
	OS_Suspend	,
	OS_Running
}OS_States;

/**
 * @brief Some of supported services.
 * 
 */

typedef enum
{
	SVC_ID_ACTIVE_TASK
}OS_Services;

/**
 * @brief This struct holds the needed attributes to manage the OS
 * 
 */
static struct
{
	u32		_S_MSP_Task;									//	Start of Main Stack Area 
	u32		_E_MSP_Task ;									//	End of Main Stack Area that defined by using @ref MainStackSize
	u32		HW_Stack_Locator;								//	Current free address in Hardware Stack
	OS_States	OS_State ;									//	Current OS state. 
	OS_Services		Service_ID	;							//	Apply Supervisor call
	MRTOS_Task*			OS_Tasks[MAX_NUM_OF_TASKS] ;		//	Pointer to user created tasks 
	MRTOS_Task*			OS_currentTask ;
	MRTOS_Task*			OS_nextTask ;

	u8			CurrentNumberofTasks ;						//	Number of tasks created by user 
}OS_Control;



/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

/**
 * @brief 
 * 
 */
queue_t	Global_QueueOfReadyTasks;

/**
 * @brief 
 * 
 */
MRTOS_Task*	Global_pTasks[MAX_NUM_OF_TASKS]	;


/**
 * @brief Is object from @ref MRTOS_Task that named as IDLE task will take place while there is no running tasks.
 * 
 */
static MRTOS_Task	Global_IdleTask ;



/******************************************************************************
* Private Functions Deceleration
*******************************************************************************/
static void MRTOS_staticSchedular(void);
static void MRTOS_voidTickerHandler(void);


/******************************************************************************
* Private Functions
*******************************************************************************/

/**
 * @brief This Function is used to create the Main stack area with used defined size @ref MainStackSize
 *
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
static MRTOS_ErrorID MRTOS_staticMainStack()
{
	MRTOS_ErrorID	LOC_MRTOS_ErrorID =	NoError ;
	// Initialize start of main stack as top of HW stack
	OS_Control._S_MSP_Task = (u32)&START_OF_STACK_IN_HW ;
	// Initialize the end of main stack
	OS_Control._E_MSP_Task = OS_Control._S_MSP_Task - MainStackSize ;
	//	Check if exceeded the available stack size,The processor uses a full descending stack
	CHECK_STACK_OVF(OS_Control._E_MSP_Task) ;
	// Reserve byte as safety and hold the last address in HW stack
	OS_Control.HW_Stack_Locator = 	( OS_Control._E_MSP_Task - SAFTY_SPACE_BETWEEN_STACKS) ;

	return LOC_MRTOS_ErrorID ;
}

/**
 * @brief Definition of Idle Task
 *
 */
static void MRTOS_staticIdleTask(void)
{
	while(1)
	{
		__asm("NOP") ;
	}
}

/**
 * @brief This is function is used to set attributes of IDLE task
 * @details	This function is inline
 *
 * @return FORCE_INLINE return one of @ref MRTOS_ErrorID
 */
FORCE_INLINE static void MRTOS_staticIdleTaskInit (void)
{
	Global_IdleTask.taskID = -1 ;
	Global_IdleTask.taskPriority	=	0	;		//	Lowest Number is Lowest Priority
	Global_IdleTask.pTaskFcn = MRTOS_staticIdleTask;

}

/**
 * @brief This Function used to design the task of stack
 * @details Define The Task Frame
 *
 * 	Task Frame When Create Task For First Time Will Add the Initial values after Reset
	 * ==================================================================================
	 * XPSR
	 * PC (Next Task Instruction which should be Run)
	 * LR (return register which is saved in CPU while TASk1 running before TaskSwitching)
	 * r12
	 * r3
	 * r2
	 * r1
	 * r0
	 *====
	 *r4,r5, r6 , r7 ,r8 ,r9, r10,r11 (Saved/Restore)Manual

 * @param pTask Pointer to task
 * @return void
 */
FORCE_INLINE static void MRTOS_voidDesignTaskStack (MRTOS_Task* pTask)
{
	u8 LOC_u8Counter = 0 ;
	/*Task Frame When Create Task For First Time Will Add the Initial values after Reset
	 * ==================================================================================
	 * XPSR
	 * PC (Next Task Instruction which should be Run)
	 * LR (return register which is saved in CPU while TASk1 running before TaskSwitching)
	 * r12
	 * r3
	 * r2
	 * r1
	 * r0
	 *====
	 *r4, r5, r6 , r7 ,r8 ,r9, r10,r11 (Saved/Restore)Manual
	 */
	//	Set The Current SP pointed to The Last Item after create task space
	pTask->taskPrivateStates.pCurrentPSP = (u32 *)pTask->taskPrivateStates._S_PSP_Task	;
	//	Decrease the value of Current PSP

	DECREASE_PC_BY(pTask,1) ;
	//	Set Some of RESET values for CPU Registers
	*(pTask->taskPrivateStates.pCurrentPSP) =	RST_xPSR	;

	DECREASE_PC_BY(pTask,1) ;
	*(pTask->taskPrivateStates.pCurrentPSP) = (u32)pTask->pTaskFcn ;	//	PC Has the address of the Task to start execution

	DECREASE_PC_BY(pTask,1) ;
	*(pTask->taskPrivateStates.pCurrentPSP) = RST_LR	;

	for(LOC_u8Counter = 0 ; LOC_u8Counter < 13 ; LOC_u8Counter++ )
	{

		DECREASE_PC_BY(pTask,1) ;
		*(pTask->taskPrivateStates.pCurrentPSP) = 0xDEADBEEF ;
	}

}



/******************************************************************************
* Function Definitions
*******************************************************************************/
MRTOS_ErrorID MRTOS_voidInit(void)
{
	MRTOS_ErrorID	LOC_MRTOS_ErrorID =	NoError ;

	// HW initialize
	MRTOS_voidHardwareInit();

	/* SW initialize
		//	OS Start With Suspend State
		//	Specify Main Stack Area for OS
		//	Initiate Queue
		//	Configure IDLE TASK
	 */
	//	OS Start With Suspend State
	OS_Control.OS_State	=	OS_Suspend ;

	//	Specify Main Stack Area for OS
	LOC_MRTOS_ErrorID = MRTOS_staticMainStack();

	//	Initialize Task Queue
	LOC_MRTOS_ErrorID = queue_create(&Global_QueueOfReadyTasks)	;
	if(LOC_MRTOS_ErrorID != (MRTOS_ErrorID)QUEUE_NO_ERROR)
		LOC_MRTOS_ErrorID = ErrorInQueueInit	;

	// Initialize Idle Task
	MRTOS_staticIdleTaskInit();
	LOC_MRTOS_ErrorID = MRTOS_voidCreateTask(&Global_IdleTask);

	return LOC_MRTOS_ErrorID ;

}

MRTOS_ErrorID MRTOS_voidCreateTask(MRTOS_Task* pTask)
{
	MRTOS_ErrorID	LOC_MRTOS_ErrorID =	NoError ;

	// Set Start of Task Stack by HW Stack Locator in OS_Control
	pTask->taskPrivateStates._S_PSP_Task	=	OS_Control.HW_Stack_Locator	;

	//	Set End of Stack E=	S - (Stack Size of Task + MIN_STACK_SIZE due to TCB)
	pTask->taskPrivateStates._E_PSP_Task	=	pTask->taskPrivateStates._S_PSP_Task - (pTask->taskStackSize + MIN_STACK_SIZE);

	//	Check Overflow
	CHECK_STACK_OVF(pTask->taskPrivateStates._E_PSP_Task);

	//Align 4 Byte as safety
	OS_Control.HW_Stack_Locator = pTask->taskPrivateStates._E_PSP_Task - SAFTY_SPACE_BETWEEN_STACKS	;

	// Initialize Stack Area
	MRTOS_voidDesignTaskStack(pTask);

	//	Check Current Number of Tasks comparing between number of defined tasks
	if(OS_Control.CurrentNumberofTasks <= MAX_NUM_OF_TASKS)
	{
		//	Update Scheduler Table
		OS_Control.OS_Tasks[OS_Control.CurrentNumberofTasks]= pTask ;
		OS_Control.CurrentNumberofTasks++ ;

		// Update Task State
		pTask->taskPrivateStates.taskState = TS_Suspend ;
	}
	else
	{
		// Exceed Max Number of Tasks Defined by user
		LOC_MRTOS_ErrorID =	ExceedMaxNumberOfTasks ;
	}

	return LOC_MRTOS_ErrorID;

}

MRTOS_ErrorID MRTOS_voidActiveTask(MRTOS_Task* pTask)
{
	MRTOS_ErrorID	LOC_MRTOS_ErrorID =	NoError ;
	// Add It in Waiting State
	pTask->taskPrivateStates.taskState = TS_Waiting;
	// Call Service Called SVC_ID_ACTIVE_TASk
	MRTOS_voidCallService((u8)SVC_ID_ACTIVE_TASK);

	return LOC_MRTOS_ErrorID ;
}

MRTOS_ErrorID MRTOS_voidStartScheduler(void)
{
	MRTOS_ErrorID	LOC_MRTOS_ErrorID =	NoError ;

	// Set Mode
	OS_Control.OS_State = OS_Running ;
	// Initial Task
	OS_Control.OS_currentTask = &Global_IdleTask ;
	// Set PSP
	PSRC_voidSetPSP((u32)OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP);
	// Active Task
	MRTOS_voidActiveTask(&Global_IdleTask);
	// Start Ticker
	MRTOS_voidStartTicker(MRTOS_voidTickerHandler);
	// Switch PSP
	PSRC_voidSetUsageStackPointer(_PSP);
	// Unprivileged Mode
	PSRC_voidSetAccessLevel(PSRC_UNPRIVILEGED_ACCESS);

	// Call Entry Point of Task
	OS_Control.OS_currentTask->pTaskFcn();

	return LOC_MRTOS_ErrorID ;

}
/******************************************************************************
* Handler Mode - Function Call
*******************************************************************************/
static void MRTOS_voidInsertionSort(void)
{

	u8 LOC_u8Counter = 0 ;
	u8 Loc_u8Key ;
	MRTOS_Task *LOC_tempTask = NULL ;

	for(LOC_u8Counter = 0 ; LOC_u8Counter < OS_Control.CurrentNumberofTasks; LOC_u8Counter++)
	{
		Loc_u8Key =  LOC_u8Counter ;
		while(
			 Loc_u8Key > 0 &&
			 ((OS_Control.OS_Tasks[Loc_u8Key]->taskPriority) >  (OS_Control.OS_Tasks[Loc_u8Key-1]->taskPriority) )
			 )
			 {
				// Swap if prevTask < CurrTask
				LOC_tempTask = (OS_Control.OS_Tasks[Loc_u8Key]);
				OS_Control.OS_Tasks[Loc_u8Key] = OS_Control.OS_Tasks[Loc_u8Key-1];
				OS_Control.OS_Tasks[Loc_u8Key-1] = LOC_tempTask ;
				Loc_u8Key-- ;
			 }
	}



}
 static void MRTOS_staticSchedular(void)
{


	MRTOS_Task *LOC_tempTask = NULL ;
	MRTOS_Task *LOC_currentTask = NULL , *LOC_nextTask = NULL ;

	//QUEUE_STATE LOC_TrackError = QUEUE_NO_ERROR ;

	u8 LOC_u8Counter = 0 ;

	// Sort Tasks
	MRTOS_voidInsertionSort();

// Select Current and Next Task
	// 1- Free Ready Queue By Reinitialize it.
	//queue_create(&Global_QueueOfReadyTasks);
	while(queue_get(&LOC_tempTask, &Global_QueueOfReadyTasks) != QUEUE_EMPTY);

	// 2- Update Ready Queue
	for(LOC_u8Counter = 0 ; LOC_u8Counter < OS_Control.CurrentNumberofTasks; LOC_u8Counter++)
	{
		LOC_currentTask = OS_Control.OS_Tasks[LOC_u8Counter];
		LOC_nextTask = OS_Control.OS_Tasks[LOC_u8Counter+1];

		// Different Scenarios
		// 1- CurrentTask is Waiting && NextTask is Suspended >>>> Add Current Task to Ready Queue with Ready State
		if(LOC_currentTask->taskPrivateStates.taskState == TS_Waiting && LOC_nextTask->taskPrivateStates.taskState == TS_Suspend)
		{
			queue_add(LOC_currentTask, &Global_QueueOfReadyTasks);
			LOC_currentTask->taskPrivateStates.taskState = TS_Ready ;
			// I know which Task should be running, so it has no meaning of keep looping
			break ;
		}
		else
		{
			// 2- Two Tasks Are in Waiting state
			// Check Priorities of Tasks
			if(LOC_currentTask->taskPriority > LOC_nextTask->taskPriority)
			{
				// Enqueue Greatest Priority (LOC_currentTask)
				queue_add(LOC_currentTask, &Global_QueueOfReadyTasks);
				LOC_currentTask->taskPrivateStates.taskState = TS_Ready ;
				// I know which Task should be running, so it has no meaning of keep looping
				break;
			}
			else if(LOC_currentTask->taskPriority == LOC_nextTask->taskPriority)
			{
				// Apply Round-Robin scheduling by enqueue two tasks in change its state to READY state
				queue_add(LOC_currentTask, &Global_QueueOfReadyTasks);
				LOC_currentTask->taskPrivateStates.taskState = TS_Ready ;
				// by default the currentTask will be nextTask in next iteration so it will handled automatically.
				// So keep it looping to enqueue tasks should run in time slice
			}
			else
			{
				// LOC_currentTask->taskPriority < LOC_nextTask->taskPriority
				//not allowed to happen as we already reordered it
			}

		}
	}

}
static void MRTROS_staticDispatcher()
{
	// Check The Queue Scenarios
	if((queue_size(&Global_QueueOfReadyTasks) == 0) && (OS_Control.OS_currentTask->taskPrivateStates.taskState != TS_Suspend))
	{
		// Task has no problem to Run again
		OS_Control.OS_currentTask->taskPrivateStates.taskState = TS_Running;
		// Add to Queue Again
		queue_add(OS_Control.OS_currentTask, &Global_QueueOfReadyTasks);
		//	Current Task will = Next Task
		OS_Control.OS_nextTask = OS_Control.OS_currentTask ;
	}
	else
	{
		// More Than One Task in Queue
		queue_get(&OS_Control.OS_nextTask,&Global_QueueOfReadyTasks);
		OS_Control.OS_nextTask->taskPrivateStates.taskState = TS_Running;

		if((OS_Control.OS_nextTask->taskPriority == OS_Control.OS_currentTask->taskPriority) && ( OS_Control.OS_currentTask->taskPrivateStates.taskState != TS_Suspend))
		{
			// Round-Robin && Current Running Task Not Suspended
			queue_add(OS_Control.OS_currentTask, &Global_QueueOfReadyTasks);
			OS_Control.OS_currentTask->taskPrivateStates.taskState = TS_Ready;
		}
	}

}
__attribute__((naked)) void PEND_SV_HANDLER_NAME (void)
{
	/**************************************	Critical Section	*************************************/
	//  __asm volatile ("CPSID i");
	// Save Current Context
	// xPSR,............,R0 automatically Pushed
	OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP = (u32*)PSRC_voidGetPSP();

	// Store Rest of Registers R11,R10,R9,R8,R7,R6,R5,R4
	// #define DECREASE_PC_BY(TSK_REF, NUM)	TSK_REF->taskPrivateStates.pCurrentPSP -=NUM


	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R4	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R5	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R6	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R7	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R8	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R9	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R10	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R11	" : "=r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));


	// Restore the Next Task
	if(OS_Control.OS_nextTask != NULL)
	{
		OS_Control.OS_currentTask = OS_Control.OS_nextTask;
		OS_Control.OS_nextTask = NULL ;
	}

	// TSK_REF->taskPrivateStates.pCurrentPSP +=NUM
	__asm volatile ("MOV R11,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R10,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R9,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R8,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R7,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R6,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R5,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R4,%0" : :"r"(*(OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	// Update PSP <<-- SP
	PSRC_voidSetPSP((u32)OS_Control.OS_currentTask->taskPrivateStates.pCurrentPSP);

	// Enable IRQ
	//__asm volatile ("CPSIE i");
	__asm("BX LR");

}
/******************************************************************************
* Handler Mode
*******************************************************************************/
void _MRTOS_SVC_CALL_( u32 *svc_args )
{

  /*
  * Stack contains:
  * r0, r1, r2, r3, r12, r14, LR, PC and xPSR
  * First argument (r0) is svc_args[0]
  */
  u8 svc_number = 	*((u8 *)(((u8*)svc_args[6])-2)) ;

  switch( svc_number)
  {
    case SVC_ID_ACTIVE_TASK:
    	// Update Scheduler Table and Ready Queue
    	MRTOS_staticSchedular();
    	// Check if OS Working
    	if(OS_Control.OS_State == OS_Running)
    	{
    		if(OS_Control.OS_currentTask->taskID != (u8)-1)
    		{
        		//	Calling Dispatcher
        		MRTROS_staticDispatcher();
        		// Context Switching
        		SCB_voidTrigPendSV();
    		}

    	}

      break;
    default:    /* unknown SVC */
      break;
  }

}

static void MRTOS_voidTickerHandler(void)
{
	// With Every Tick Evaluate the scheduler table
	MRTOS_staticSchedular();
	// Select Tasks
	MRTROS_staticDispatcher();
	// Context Switching
	SCB_voidTrigPendSV();
}

/************************************* End of File ******************************************/
