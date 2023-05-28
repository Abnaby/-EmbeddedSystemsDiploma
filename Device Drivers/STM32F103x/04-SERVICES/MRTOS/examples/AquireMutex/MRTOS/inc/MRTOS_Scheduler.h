/**
* @file MRTOS_Scheduler.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief this file contain MRTOS services.
* @version 1.5
* @date 2023-05-28
*
*/

#ifndef INC_MRTOS_SCHEDULER_H_
#define INC_MRTOS_SCHEDULER_H_


/******************************************************************************
* Includes
*******************************************************************************/

#include "STD_TYPES.h"
#include "../MRTOS/inc/MRTOS_Porting.h"

/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/


/******************************************************************************
* Typedefs
*******************************************************************************/

typedef void (*ptrFunc) (void) ;


/**
 * @brief  this enum holds the available options for expects errors
 */
typedef enum
{
	NoError	,					//	The function executed successfully
	StackOverflow	,			//	Return when happen overflow in function
	ErrorInQueueInit	,		// 	Error in Queue Initialization
	ExceedMaxNumberOfTasks,		//	Happens when number of tasks larger than defined in @ref AX_NUM_OF_TASKS in @ref MRTOS_Porting.h
	NULL_ARGs,					// User Passed Null Argument
	INVALID_OPERATION
}MRTOS_ErrorID;



/**
 * @brief  this enum holds the available options for state of task
 *
 */
typedef enum
{
	TS_Suspend,		//	All Created/Terminated/Unavailable Resource Tasks Will Marked as TS_Suspend
	TS_Running,		//	Running Task Will Marked as TS_Running
	TS_Waiting,		//	All Activated tasks marked as TS_Waiting
	TS_Ready		//  In Case have task has higher priority will marked as TS_Ready
}MRTOS_TaskStates;

/**
 * @brief  this struct holds some attributes that Not Entered by the user
 *
 */
typedef struct
{
	MRTOS_TaskStates	taskState ;		//	Current Task State
	u32					_S_PSP_Task ;	//	Start Address of task in stack
	u32					_E_PSP_Task ;	//	End Address of task in stack
	u32*				pCurrentPSP ;	//	Current stack pointer in function
	u8					TimeDelayFlag;	// Enable/Disable Function Delay
	u32					_taskDelayTime;			  // Task periodicity.
}MRTOS_PrivTaskRef;

/**
 * @brief  this struct defined as task with some User Accessible parameters and some of it Non Accessible by user
 */
typedef struct
{
	//	User Accessible
	u8  								taskID		;				  // The ID of the Task
	u32								taskStackSize ;				  // Size Of Task
	u8									taskPriority;				  // Priority of task --> Lowest number is Lowest Priority
	ptrFunc								pTaskFcn ;			      	  // Pointer to Task
	//  Non Accessible by user
	MRTOS_PrivTaskRef					taskPrivateStates;	          // I know you wont listen, but don't ever touch this member.
}MRTOS_Task;

#if ENABLE_QUEUE_MSG_BOX == 1 ||ENABLE_BINARY_SAMPHORE == 1 || ENABLE_COUNTING_SAMPHORE ==1 ||ENABLE_MUTEX	== 1
/**
 * @brief  this struct holds some attributes that Not Entered by the user
 *
 */
typedef struct
{
	u32 msgWaitingCounter ;
	u32 maxCounting	;
	u32 nextPopedItemIndex	;
} MRTOS_PrivQueueRef ;
#endif


/******************************************************************************
* Private Typedefs
*******************************************************************************/
#if ENABLE_QUEUE_MSG_BOX == 1
/**
 * @brief  this struct defined as queue for data synchronization
 */
typedef struct
{
	MRTOS_PrivQueueRef 		QueuePrivateData;
}MRTOS_Queue;
#endif

#if ENABLE_BINARY_SAMPHORE == 1

/**
 * @brief  this struct defined as queue for data synchronization
 */
typedef struct
{
	MRTOS_PrivQueueRef 		QueuePrivateData;
}MRTOS_BinarySamphore;

#endif

#if ENABLE_COUNTING_SAMPHORE ==1
/**
 * @brief  this struct defined as counting semaphore
 */
typedef struct
{
	MRTOS_PrivQueueRef 		QueuePrivateData;
}MRTOS_CountingSamphore;
#endif

#if ENABLE_MUTEX	== 1
typedef struct
{
	MRTOS_Task* MutexHolder ;
	u8		priorityInversionFlag ;
	MRTOS_Task* inheritedTask;
	MRTOS_PrivQueueRef 		QueuePrivateData;

}MRTOS_Mutex;
#endif

/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This Function is used to initialize MRTOS.
 * @details This Function Will initialize some of HW like systick timer of some of SW codes.
 * @example
 * ```c
 * 			MRTOS_voidInit();
 * ```
 * @param  void
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_voidInit(void);

/**
 * @brief This Function is used to Create task area.
 *
 * @param pTask 	pointer to task that has attributes @ref MRTOS_Task
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_voidCreateTask(MRTOS_Task* pTask);

/**
 * @brief This Function is used to active task and make it ready to execute.
 *
 * @param pTask 	pointer to task that has attributes @ref MRTOS_Task
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_voidActiveTask(MRTOS_Task* pTask);


/**
 * @brief This Function is used to Terminate task  .
 *
 * @param pTask 	pointer to task that has attributes @ref MRTOS_Task
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */

MRTOS_ErrorID MRTOS_voidTerminateTask(MRTOS_Task* pTask);


/**
 * @brief Delay a task for a given number of ticks. The actual time that the task remains blocked depends on the tick rate.
 *
 * @param pTask     pointer to task that has attributes @ref MRTOS_Task
 * @param copy_u32NumberofTicks The amount of ticks, that the calling task should block.
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_voidTaskDelay(MRTOS_Task* pTask, u32 copy_u32NumberofTicks);

/**
 * @brief This Function is used to run kernal of MRTOS.
 *
 * @param pTask 	pointer to task that has attributes @ref MRTOS_Task
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_voidStartScheduler(void);
#if ENABLE_QUEUE_MSG_BOX == 1

/**
 * @brief This Function is used to send element with size u32 to queue to be shared between tasks.
 *
 * @param copy_u32ToData 	pointer to data to be add in queue
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_voidSendItemToQueue(u32 copy_u32ToData);
/**
 * @brief This Function is used to receive first element with size u32 .
 *
 * @param pToData 	pointer to data to be add in queue
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_RecieveItemToQueue(u32 *pToData);

/**
 * @brief This Function is used to reset the queue.
 *
 * @param void
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_ResetQueue(void );
#endif

#if ENABLE_BINARY_SAMPHORE == 1
/**
 * @brief This Function is used to take a Semaphore .
 *
 * @param an object from @ref MRTOS_BinarySamphore
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_AquireBinarySemaphore(MRTOS_BinarySamphore *pSamphore);
/**
 * @brief This Function is used to give a Semaphore .
 *
 * @param an object from @ref MRTOS_BinarySamphore
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_ReleaseBinarySemaphore(MRTOS_BinarySamphore *pSamphore);
/**
 * @brief This Function is used to get a semaphore state.
 *
 * @param pSamphore   an object from @ref MRTOS_BinarySamphore
 * @param ptr_u8Flag  state of semaphore.
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_GetBinarySemaphoreState(MRTOS_BinarySamphore *pSamphore, u8* ptr_u8Flag);

#endif

#if ENABLE_COUNTING_SAMPHORE == 1
/**
 * @brief This Function is used to initialize Counting Semaphore .
 *
 * @param pSemaphore an object from @ref MRTOS_CountingSamphore
 * @param copy_u8MaxCount	maximum number of the counting semaphore.
 * @param copy_u8InitialCount initial value of counting semaphore
 *
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_CreateCountingSemphore(MRTOS_CountingSamphore *pSemaphore, u32 copy_u8MaxCount , u32 copy_u8InitialCount);
/**
 * @brief This Function is used to increment Counting Semaphore .
 *
 * @param pSemaphore an object from @ref MRTOS_CountingSamphore
 *
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_IncrementCountingSemphore(MRTOS_CountingSamphore *pSemaphore);
/**
 * @brief This Function is used to decrement Counting Semaphore .
 *
 * @param pSemaphore an object from @ref MRTOS_CountingSamphore
 *
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_DecrementCountingSemphore(MRTOS_CountingSamphore *pSemaphore);

/**
 * @brief This Function is used to get current Semaphore counter .
 *
 * @param pSemaphore an object from @ref MRTOS_CountingSamphore
 * @param ptoNumberOfFlags pointer to result variable
 *
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_GetCountingSemphore(MRTOS_CountingSamphore *pSemaphore , u32 *ptoNumberOfFlags);

#endif

#if ENABLE_MUTEX == 1

/**
 * @brief This Function is used to create mutex  .
 *
 * @param pMutex an object from @ref MRTOS_Mutex
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_CreateMutex(MRTOS_Mutex *pMutex);
/**
 * @brief This Function is used to take a mutex .
 *
 * @param pMutex an object from @ref MRTOS_Mutex
 * @param pCurrentRunningTask pointer to current running task.
 *
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_AquireMutex(MRTOS_Mutex *pMutex,MRTOS_Task* pCurrentRunningTask);

/**
 * @brief This Function is used to give a mutex .
 *
 * @param pMutex an object from @ref MRTOS_Mutex
 * @param pCurrentRunningTask pointer to current running task.
 *
 * @return MRTOS_ErrorID return one of @ref MRTOS_ErrorID
 */
MRTOS_ErrorID MRTOS_ReleaseMutex(MRTOS_Mutex *pMutex,MRTOS_Task* pCurrentRunningTask);


#endif

#endif /* INC_MRTOS_SCHEDULER_H_ */
