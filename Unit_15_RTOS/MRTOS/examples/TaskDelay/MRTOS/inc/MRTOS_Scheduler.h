/**
* @file MRTOS_Scheduler.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief this file contain MRTOS services.
* @version 0.1
* @date 2023-05-01
*
*/

#ifndef INC_MRTOS_SCHEDULER_H_
#define INC_MRTOS_SCHEDULER_H_


/******************************************************************************
* Includes
*******************************************************************************/

#include "STD_TYPES.h"



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
	ExceedMaxNumberOfTasks		//	Happens when number of tasks larger than defined in @ref AX_NUM_OF_TASKS in @ref MRTOS_Porting.h

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


/******************************************************************************
* Configuration Constants
*******************************************************************************/


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
 * @brief This Function is used to determine the periodicity of tasks and make time delays.
 *
 * @param pTask     pointer to task that has attributes @ref MRTOS_Task
 * @param copy_u32NumberofTicks     Number of delayed ticks.
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

#endif /* INC_MRTOS_SCHEDULER_H_ */
