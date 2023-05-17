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


#include "../MRTOS/inc/MRTOS_Scheduler.h"
#include "../MRTOS/inc/MRTOS_Porting.h"
#include "../Inc/STK_interface.h"
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
	SVC_ActiveTask	,
	SVC_TerminateTask
}SVC_IDs;

/**
 * @brief This struct holds the needed attributes to manage the OS
 * 
 */
struct
{
	u32		_S_MSP_Task;									//	Start of Main Stack Area 
	u32		_E_MSP_Task ;									//	End of Main Stack Area that defined by using @ref MainStackSize
	u32		HW_Stack_Locator;								//	Current free address in Hardware Stack
	OS_States	OS_State ;									//	Current OS state. 
	SVC_IDs		Service_ID	;								//	Apply Supervisor call
	MRTOS_Task*			OS_Tasks[MAX_NUM_OF_TASKS] ;		//	Pointer to user created tasks 
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
* Function Prototypes
*******************************************************************************/


static void MRTOS_voidSchedular(void);

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
static void MRTOS_voidIdleTask(void)
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
FORCE_INLINE static void MRTOS_voidIdleTaskInit (void)
{
	Global_IdleTask.taskID = -1 ;
	Global_IdleTask.taskPriority	=	0	;		//	Lowest Number is Lowest Priority
	Global_IdleTask.taskPeriodicity =	1	;		//	Periodicity Must be > 0
	Global_IdleTask.pTaskFcn = MRTOS_voidIdleTask;

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
	 * r4
	 * r3
	 * r2
	 * r1
	 * r0
	 *====
	 *r5, r6 , r7 ,r8 ,r9, r10,r11 (Saved/Restore)Manual
	
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
	 * r4
	 * r3
	 * r2
	 * r1
	 * r0
	 *====
	 *r5, r6 , r7 ,r8 ,r9, r10,r11 (Saved/Restore)Manual
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
		*(pTask->taskPrivateStates.pCurrentPSP) = 0 ;
	}

}

/******************************************************************************
* Function Definitions
*******************************************************************************/
MRTOS_ErrorID MRTOS_voidInit(void)
{
	MRTOS_ErrorID	LOC_MRTOS_ErrorID =	NoError ;

	// HW initialize
	/* To initialize the STK driver */
	STK_voidInit();
	/* To pass the scheduler function to the systick ISR */
	STK_voidSetIntervalPeriodic(TICK_TIME , MRTOS_voidSchedular);

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
	if(LOC_MRTOS_ErrorID == StackOverflow)
		LOC_MRTOS_ErrorID = StackOverflow ;

	//	Initialize Task Queue
	LOC_MRTOS_ErrorID = queue_create(&Global_QueueOfReadyTasks)	;
	if(LOC_MRTOS_ErrorID != (MRTOS_ErrorID)QUEUE_NO_ERROR)
		LOC_MRTOS_ErrorID = ErrorInQueueInit	;

	// Initialize Idle Task
	MRTOS_voidIdleTaskInit();
	LOC_MRTOS_ErrorID = MRTOS_voidCreateTask(&Global_IdleTask);
	return LOC_MRTOS_ErrorID ;

}

MRTOS_ErrorID MRTOS_voidCreateTask(MRTOS_Task* pTask)
{
	MRTOS_ErrorID	LOC_MRTOS_ErrorID =	NoError ;

	// Set Start of Task Stack by HW Stack Locator in OS_Control
	pTask->taskPrivateStates._S_PSP_Task	=	OS_Control.HW_Stack_Locator	;

	//	Set End of Stack E=	S - Stack Size of Task
	pTask->taskPrivateStates._E_PSP_Task	=	pTask->taskPrivateStates._S_PSP_Task - pTask->taskStackSize	;

	//	Check Overflow
	CHECK_STACK_OVF(pTask->taskPrivateStates._E_PSP_Task);

	//Align 1 Byte as safety
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



/******************************************************************************
* Callback
*******************************************************************************/

void SVC_Handler_Main( unsigned int *svc_args )
{

  /*
  * Stack contains:
  * r0, r1, r2, r3, r12, r14, the return address and xPSR
  * First argument (r0) is svc_args[0]
  */
  u8 svc_number = 	*((u8 *)(((u8*)svc_args[6])-2)) ;
  switch( svc_number)
  {
    case 0:  /* EnablePrivilegedMode */
      break;
    default:    /* unknown SVC */
      break;
  }
}

void MRTOS_voidSchedular(void)
{

}
/******************************************************************************
* IRQ Definition
*******************************************************************************/




/************************************* End of File ******************************************/
