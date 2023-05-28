
## Getting started  
- First of all The MRTOS is implemented for educational and learning purposes so it may exist some faults I didn't handle so u can upload them in the issue section or fork the project and try to add your modification.

## Getting help 
Feel Free to contact me, just message me at <br/> Linkedin at `linkedin.com/in/abnaby` <br/> Facebook at `fb.com/imohamedabdo` <br/> with your question.
## Repository structure
This repository containsss the necessary files for MRTOS 
```bash
$ MRTOS
.
├── inc
│   ├── MRTOS_Porting.h 		-->	Is Used to Port MRTOS to different Processors/MCUs
│   ├── MRTOS_Scheduler.h 		--> Function Prototypes of What is TASK and Supported APIs 
│   └── Queue Files			-->	Needed Files For Queue Implementation
├── src
│   ├── MRTOS_Porting.c			-->	Is Used to define all processor faults as weak fcn.
│   ├── MRTOS_Scheduler.c		--> APIs Definition DO NOT EDIT ANYTHING HERE 
│   └── Queue Files			-->	Needed Files For Queue Implementation
│── Essential_MCAL_Libs 
├── examples
│   ├── AquireMutex					
│   ├── AquireCountingSemaphore					
│   ├── AquireBinarySemaphore					
│   ├── QueueUsage					
│   ├── TaskDelay					
│   └── Round-Robin			
└── README.md
```
## MRTOS Features 
in `V1.5`
* Support The basic operation of any RTOS.
* The MRTOS scheduler based on priority - Highest Priority Should Run First-
* Support Round-Robin Scheduling when two or more tasks have the same highest priority. 
* Updated the IDLE task content to enter sleep mode and wait for an event.
* Implement <a href="#Queue">Queue</a> Queue APIs to share data between tasks.
* Support <a href="#Semaphore">Binary Semaphores</a> as signaling mechanism.
* Support <a href="#Semaphore">Counting Semaphores</a> as signaling mechanism.
* Support <a href="#Mutex">Mutex</a> as locking mechanism .
* Must Take Care of the <a href="#Deadlock">deadlock</a> problem.

## MRTOS Performance
>  MRTOS CPU utilization  
By updating `NOP` instruction with `WFE` instruction.  
![image](https://drive.google.com/uc?export=download&id=1aU-jwE04Cd6NI4pz_YGngCXllb6-Fe_y)

>  Tasks Switching Latency 
![image](https://drive.google.com/uc?export=download&id=1I1TWVKmjpkRBKU8vcMBaQTsFK7tiHiyj)


## Porting Between Different Microprocessors.
If you Opened The `MRTOS_Porting.h` will find some of the tunable parameters. <br/>
the default parameters for MRTOS that designed to `Cortex M3` and `Cortex M4` but you can port `MRTOS` if use a different microprocessor. <br/>
in `MRTOS_Porting.h` exist 
| Param Name | Usage |  Options |
| ------ | ------ | ----- |
| __ CPU __ | This Macro is Used to select the processor to include the suitable APIs to access the processor register  | `CORTEX_M3` <br/> `CORTEX_M4` | 
| MAX_NUM_OF_TASKS | Write down maximum number of tasks | if define tasks more than defined will return error `ExceedMaxNumberOfTasks`|
| TICK_TIME | This Macro is used to define the tick time in microsecond | the default is 1 millisecond |
| MainStackSize | his Macro is used to define the SIZE of main stack area | This area is used by Kernel, Interrupts, and Exceptions |
| PEND_SV_HANDLER_NAME | This Macro is used to define the handler name of pendSV |  |
| END_OF_STACK_SYMBOL | This Symbol is defined for the top of stack defined by linkerscript (.ld) File | if your `ld` file uses another name change it to `_estack` |
| END_OF_HEAP_SYMBOL | This Symbol is defined for the top of heap defined by linkerscript (.ld) File | if your `ld` file uses another name change it to `_eheap` | 
| ENABLE_QUEUE_MSG_BOX | This Macro is used to Enable Queue for sharing data between threads | if the value is `1` enabled, otherwise is disabled | 
| MAX_QUEUE_MSG_SIZE | This Macro is used to define MAX size of Queue for data synch |  Write the max possible elements of MSG_QUEUE_BOX | 
| ENABLE_BINARY_SAMPHORE | This Macro is used to Enable Binary Semaphore | if the value is `1`so it is enabled, otherwise is disabled | 
| ENABLE_COUNTING_SAMPHORE | This Macro is used to Enable Counting Semaphore | if the value is `1`so it is enabled, otherwise is disabled | 
| ENABLE_MUTEX | This Macro is used to Enable mutual exclusion (MUTEX) | if the value is `1`so it is enabled, otherwise is disabled | 


in `MRTOS_Porting.h` if using another processor add your processor information in `Includes` section.

```c 
#if (__CPU__ == CORTEX_M3) ||( __CPU__ == CORTEX_M4)
#include "../Inc/PSRC_interface.h"			// Include Processor Libraries
#include "../Inc/STK_interface.h"			// Include Systic
#include "../Inc/SCB_interface.h"			// For Trig PendSV
#include "../Inc/NVIC_interface.h"			// To Set Priority of IRQs
#include "../Inc/SCB_interface.h"			// For Trig PendSV
#include "../Inc/PSRC_interface.h"			// Include Processor Libraries
#else
    #error "Undefined CPU."
#endif
```

in `MRTOS_Porting.c` Exist all most popular faults for CPU in while(1) defined as weak function. 

```c
_attribute_(__WEAK__) void HardFault_Handler (void) { while(1); }

_attribute_(__WEAK__) void MemManage_Handler(void) { while(1); }
 
_attribute_(__WEAK__) void BusFault_Handler(void) { while(1); }
 
_attribute_(__WEAK__) void UsageFault_Handler(void) { while(1); }

```

## Development   
| Function Name | Usage &nbsp; &nbsp; &nbsp; &nbsp;  |  Parameter | return |
| ------ | ------------ |  ------ |  ------ |
| MRTOS_voidInit(void)  | This Function is used to initialize MRTOS. <br/> This function will initialize some of HW like systick timer and some of SW like initializing idle task.| void | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>  |
| MRTOS_voidCreateTask(p2Task) | This Function is used to Create task stack area  |  `MRTOS_Task* pTask` - pointer to user defined <a href="#Task-Definition">Task</a> | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_voidActiveTask(p2Task) | This Function is used for Active tasks and makes them ready to execute  |  `MRTOS_Task* pTask` - pointer to user defined <a href="#Task-Definition">Task</a> | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_voidTerminateTask(p2Task) | This Function is used for Terminate tasks.  |  `MRTOS_Task* pTask` - pointer to user defined <a href="#Task-Definition">Task</a> | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_voidTaskDelay(p2Task,u32) | Delay a task for a given number of ticks. The actual time that the task remains blocked depends on the tick rate.  |  `MRTOS_Task* pTask` - pointer to user defined <a href="#Task-Definition">Task</a> <br/>`u32 copy_u32NumberofTicks` The amount of ticks, that the calling task should block.| `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_voidStartScheduler(void) | This Function is used to send element with size u32 to queue to be shared between tasks  |  `void` | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_voidSendItemToQueue<br/>(copy_u32ToData) | This Function is used to receive first element with size u32 .  |  `u32 *pToData`  pointer to data to be add in queue | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_RecieveItemToQueue(pToData); | This Function is used to start OS kernal  |  `void` | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_ResetQueue(void) | This Function is used to reset the queue.  |  `void` | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_AquireBinarySemaphore<br/>(MRTOS_BinarySamphore *) | This Function is used to take a Semaphore.  |  `MRTOS_BinarySamphore *pSamphore` an object from @ref MRTOS_BinarySamphore | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_ReleaseBinarySemaphore<br/>(MRTOS_BinarySamphore *)  | This Function is used to give a semaphore state.  |  `MRTOS_BinarySamphore *pSamphore` an object from @ref MRTOS_BinarySamphore | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_GetBinarySemaphoreState<br/>(MRTOS_BinarySamphore *)  | This Function is used to get a semaphore state.  |  `MRTOS_BinarySamphore *pSamphore` an object from @ref MRTOS_BinarySamphore <br/> `ptr_u8Flag` state of semaphore | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |
| MRTOS_CreateCountingSemphore<br/>(MRTOS_CountingSamphore *,u32,u32)  | This Function is used to initialize Counting Semaphore.  |  `MRTOS_CountingSamphore *pSamphore` an object from MRTOS_CountingSamphore <br/> `u32 copy_u8MaxCount` maximum number of the counting semaphore. <br/> `copy_u8InitialCount` initial value of counting semaphore | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a> |
| MRTOS_IncrementCountingSemphore<br/>(MRTOS_CountingSamphore *)  | This Function is used to increment Counting Semaphore.  |  `MRTOS_CountingSamphore *pSamphore` an object from MRTOS_CountingSamphore  | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a> |
| MRTOS_DecrementCountingSemphore<br/>(MRTOS_CountingSamphore *)  | This Function is used to decrement Counting Semaphore.  |  `MRTOS_CountingSamphore *pSamphore` an object from MRTOS_CountingSamphore  | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a> |
| MRTOS_GetCountingSemphore<br/>(MRTOS_CountingSamphore *,u32)  | This Function is used to get current Semaphore counter.  |  `MRTOS_CountingSamphore *pSamphore` an object from MRTOS_CountingSamphore <br/> `u32 *ptoNumberOfFlags` pointer to result variable  | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a> |
| MRTOS_CreateMutex<br/>(MRTOS_Mutex *)  | This Function is used to create and initialize mutex.  |  `MRTOS_Mutex *pMutex` an object from @ref MRTOS_Mutex | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a> |
| MRTOS_AquireMutex<br/>(MRTOS_Mutex*, MRTOS_Task*)  | This Function is used to take a mutex.  |  `MRTOS_Mutex *pMutex` an object from @ref MRTOS_Mutex <br/>  `MRTOS_Task* pCurrentRunningTask` - pointer to current running user defined <a href="#Task-Definition">Task</a>| `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a> |
| MRTOS_ReleaseMutex<br/>(MRTOS_Mutex*, MRTOS_Task*)  | This Function is used to take a mutex.  |  `MRTOS_Mutex *pMutex` an object from @ref MRTOS_Mutex <br/>  `MRTOS_Task* pCurrentRunningTask` - pointer to current running user defined <a href="#Task-Definition">Task</a>| `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a> |



### Queue
Queue is the easiest way to send and receive data between the tasks.A queue is a first in, first out (FIFO) system where items are removed from the queue once read.  
In this example, Task A writes some data to a queue, After, Task B can write some other piece of data to the queue. Task B’s data will appear behind Task A’s data, as the queue is a FIFO system.
<div align="center">
<img src="https://www.digikey.com/maker-media/88d32074-22e7-4fc3-943f-9e59b06dede9">
</div>
You can find and example in  

[Queue Example](../MRTOS/examples/QueueUsage/)

### Semaphore
> Binary Semaphores  
a signal between tasks/interrupts that does not carry any additional data. The most common type of semaphore is a binary semaphore, that triggers activation of a task. <div align="center">
<img src="https://static.packt-cdn.com/products/9781838826734/graphics/assets/d82cc6e2-4a19-4439-ba39-632cfccaedb0.png"></div>  
[Binary Semaphore Example](../MRTOS/examples/AquireBinarySemaphore/)

> Counting Semaphores  
A counting semaphore refers to a semaphore with several counter values. The value can span a wide range of possibilities. The counting semaphore’s value can range from 0 to N.  <div align="center"><img src="https://gab.wallawalla.edu/~larry.aamodt/cptr480/keil/Documentation/RTOS2/html/Semaphore.png"> </div>  [Counting Semaphore Example](../MRTOS/examples/AquireCountingSemaphore/)

### Mutex
A mutex (short for MUTual EXclusion) is a flag or lock used to allow only one thread to access a section of code at a time. It blocks (or locks out) all other threads from accessing the code or resource. This ensures that anything executed in that critical section is thread-safe and information will not be corrupted by other threads.
<div align="center"><img src="https://i.ibb.co/jvX5pk3/How-to-Write-Parallel-Multitasking-Applications-for-ESP32-with-Free-RTOS-and-Arduino-Mutex-Working-I.png"> </div> 

For Example 
We need to protect the shared resource LCD when writing on it.
```c 
MRTOS_AquireMutex(&mutex1,&currentTask);

//#######################################
//########## Critical Section ###########
//#######################################
WriteOnLCD("Hello World");

MRTOS_ReleaseMutex(&mutex1,&currentTask);
```
<div align="center"><img src="https://microcontrollerslab.com/wp-content/uploads/2020/05/FreeRTOS-mutex-example.jpg"> </div> 

 [Mutex Example](../MRTOS/examples/AquireMutex/)

### Deadlock
A deadlock consists of a set of blocked processes, each holding a resource and waiting to acquire a resource held by another process in the set  A deadlock, also called as deadly embrace, is a situation in which two threads are each unknowingly waiting for resource held by other.  
Example  
A system has 2 disk drives P1 and P2 each hold one disk drive and each need the other one.  

| P0 | P1 |
| ------ | ------ | 
| wait (A) | wait(B) | 
| wait (B) | wait(A) | 
<div align="center"><img src="https://i.imgur.com/upmQJaT.jpg"> </div> 


* Task #1 wants the scanner while holding the printer. Task #1 cannot proceed until both the printer and the scanner are in its possession.
* Task #2 wants the printer while holding the scanner. Task #2 cannot continue until it has the printer and the scanner.


 



### Error-Id
| Error Name | Usage | 
| ------ | ------ | 
|  NoError | When The function executed successfully. | 
| StackOverflow | When happen overflow during creating task.  | 
| ErrorInQueueInit | Error in Queue Initialization. | 
| ExceedMaxNumberOfTasks | Happens when number of tasks larger than defined in macro `MAX_NUM_OF_TASKS` in file `MRTOS_Porting.h`. | 
| NULL_ARGs | Happens when User Passed Null Argument | 
|INVALID_OPERATION|When Perform invalid operation|


### Task-Definition  
This struct defined as task, with some User Accessible parameters and some of it Non Accessible by user.
```c
typedef struct
{
	//	User Accessible
	u8  				taskID		;				  
	u32					taskStackSize ;				  
	u8					taskPriority;				 
	ptrFunc				pTaskFcn ;			   
	//  Non Accessible by user
	MRTOS_PrivTaskRef taskPrivateStates  // I know you wont listen, but don't ever touch this member.
}MRTOS_Task;
```
| Member Name | Usage | Notes |
| ------ | ------ | ----- |
| taskID | The ID of the Task | Select Number from `0` to `255`|
| taskStackSize |  Size of task in bytes | |
| taskPriority | Priority of task |  Lowest number is Lowest Priority | 
| pTaskFcn | Pointer to Task  | 
| taskPrivateStates | Non Accessible by user. check out that part for more <a href="#Task-Creation">details</a> | 


### Task-Creation
The Task is defined in <a href="#Task-Definition">struct</a> with some user-accessible members and some of them are non-accessible by the user. but in this part we will explain what the `MRTOS_ErrorID MRTOS_voidCreateTask(MRTOS_Task* pTask)` do in details 
First of all,I need to explain what is the `taskPrivateStates` struct contains 

``` taskPrivateStates Struct ```   

| Member Name | Usage | 
| ------ | ------ | 
| taskState | Current Task State <a href="#Task-States">Details</a>  | 
| _S_PSP_Task | Start Address of task in hardware stack | 
| _E_PSP_Task | End Address of task in hardware stack |  
| pCurrentPSP | Current stack pointer in function to know the last pushed item |
| TimeDelayFlag | Flag to enable/disable tick delay of task.|
| _taskDelayTime | Delay a task for a given number of ticks. The actual time that the task remains blocked depends on the tick rate |

Before Going Deep into The function implementation I need to explain a static struct that is related to OS to keep track the updates in OS.  



``` OS_Control Struct ```   

| Member Name | Usage | 
| ------ | ------ | 
| _S_MSP_Task | Start of Main Stack Area  | 
| _E_MSP_Task | End of Main Stack Area that defined by using `MainStackSize` | 
| HW_Stack_Locator | Current free address in Hardware Stack to start pushing |  
| OS_State | Current OS state. `OS_Suspend/OS_Running` |  
| Service_ID | Apply Supervisor call | 
| OS_Tasks | array of pointer to user created <a href="#Task-Definition">tasks</a> | 
| CurrentNumberofTasks | Number of tasks created by user | 

To Create a Task, Will Walking some Steps to initialize it 	
- Set The Start of Task Stack <-  HW Stack Locator in OS_Control
	```c
	pTask->taskPrivateStates._S_PSP_Task	=	OS_Control.HW_Stack_Locator	;
	```
- Set The End of Stack  using eqn `E =	S - Stack Size of Task`
	```c
	pTask->taskPrivateStates._E_PSP_Task = pTask->taskPrivateStates._S_PSP_Task - pTask->taskStackSize	;
	```
- Check Overflow   
    == _S_PSP_Task	=  
	==	Task Stack	=  
	== _E_PSP_Task	=  
	==				=  
	== _eheap		=  

	```c
	if( pTask->taskPrivateStates._E_PSP_Task < (u32)&START_OF_HEAP_IN_HW)
			LOC_MRTOS_ErrorID = StackOverflow
	```
- Align Some Safty Space by 4 byte
	```c
	OS_Control.HW_Stack_Locator = pTask->taskPrivateStates._E_PSP_Task - 4	;
	```
- Initialize stack area  
	Task Frame When Creating a Task For the First Time Will Add the Initial values after Reset
	 * XPSR <- 0x01000000	DUMMY_XPSR should T =1 to avoid BUS fault
	 * PC (Next Task Instruction which should be Run)
	 * LR (return register which is saved in CPU while TASk1 running before TaskSwitching 
	 (EXC_RETURN) Return to thread with PSP stack as stack area )
	 * r12
	 * r4
	 * r3
	 * r2
	 * r1
	 * r0  
	 * r5, r6 , r7 ,r8 ,r9, r10,r11 (Saved/Restore) Manual  

		<div align="center">
		<img src="https://drive.google.com/uc?export=download&id=1Mccwymij9dtYbKaC3IH12wlC_J7Yv_6N">
		</div>

	 **Noted That** The processor uses a full descending stack
	 ```c
	//	Set The Current SP pointed to The Last Item after creating task space
	pTask->taskPrivateStates.pCurrentPSP = (u32 *)pTask->taskPrivateStates._E_PSP_Task	;

	//	Decrease the value of the Current PSP
	DECREASE_PC_BY(pTask,1) ;
	//	Set Some of the RESET values for CPU Registers
	*(pTask->taskPrivateStates.pCurrentPSP) =	RST_xPSR	;

	DECREASE_PC_BY(pTask,1) ;
	//	PC Has the address of the Task to start execution
	*(pTask->taskPrivateStates.pCurrentPSP) = (u32)pTask->pTaskFcn ;	

	DECREASE_PC_BY(pTask,1) ;
	*(pTask->taskPrivateStates.pCurrentPSP) = RST_LR	;

	for(LOC_u8Counter = 0 ; LOC_u8Counter < 13 ; LOC_u8Counter++ )
	{
		DECREASE_PC_BY(pTask,1) ;
		*(pTask->taskPrivateStates.pCurrentPSP) = 0 ;
	}
	 ```
- 	Check the Current Number of Tasks comparing between the number of defined tasks
	```c
	if(OS_Control.CurrentNumberofTasks <= MAX_NUM_OF_TASKS)
	{
		// Some Code 
	}
	else 
	{
		// Exceed Max Number of Tasks Defined by the user
		LOC_MRTOS_ErrorID =	ExceedMaxNumberOfTasks ;
	}
	```
-	If the last condition is true start updating the scheduling table
	```c
	OS_Control.OS_Tasks[OS_Control.CurrentNumberofTasks]= pTask ;
	OS_Control.CurrentNumberofTasks++ ;
	```
-	Update the task state to suspend according to <a href="#Task-States">Task States</a>
	```c
	pTask->taskPrivateStates.taskState = TS_Suspend ;
	```
***So After All of That*** you must know there are 16(CPU_Reg) * (4 bytes) = 64 bytes + Same size for saving/restoring context that exist in any created task but ignore this info when creating stack size.

## Task-States
<div align="center">
<img src="https://drive.google.com/uc?export=download&id=1RQBPP4rwn_94k11kkjI03EQo8V0QWzdI">
</div>

## Context-Switching 
The ARM Cortex-M3/4 architecture is designed with special features to facilitate implementing a pre-emptive RTOS. The system code takes advantage of these features when implementing context switching code.  
The stack pointers for the ARM Cortex-M include the main stack pointer (MSP) and the process stack pointer (PSP). The MSP is always used when handling interrupts. The PSP is only used during regular task execution. ARM recommends using the MSP for the kernel as well as interrupts and recommends the PSP for executing other tasks.
The context switcher needs to:  
* Save Context of current task .
* update the current task by the next task to be executed.  
* load the context of the task which is about to execute.  

The following code is an example of a context switching
```c
void PEND_SV_HANDLER_NAME (void)
{
	/**************************************	Critical Section	*************************************/
	// Save Current Context
	// xPSR,............,R0 automatically Pushed
	pCurrentPSP = (u32*)PSRC_voidGetPSP();

	// Store Rest of Registers R11,R10,R9,R8,R7,R6,R5,R4
	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R4	" : "=r"(*(pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R5	" : "=r"(*(pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R6	" : "=r"(*(pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R7	" : "=r"(*(pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R8	" : "=r"(*(pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R9	" : "=r"(*(pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R10	" : "=r"(*(pCurrentPSP)));

	DECREASE_PC_BY(OS_Control.OS_currentTask,1);	// Decrease Current SP by one
	__asm volatile ("MOV %0,R11	" : "=r"(*(pCurrentPSP)));

	// Restore the Next Task
	if(OS_Control.OS_nextTask != NULL)
	{
		OS_Control.OS_currentTask = OS_Control.OS_nextTask;
		OS_Control.OS_nextTask = NULL ;
	}

	__asm volatile ("MOV R11,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R10,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R9,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R8,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R7,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R6,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R5,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	__asm volatile ("MOV R4,%0" : :"r"(*(pCurrentPSP)));
	INCREASE_PC_BY(OS_Control.OS_currentTask,1);	// increase Current SP by one

	// Update PSP <<-- SP
	PSRC_voidSetPSP((u32)pCurrentPSP);

	__asm("BX LR");

}
```
So the whole image of context switching is:  

![image](https://drive.google.com/uc?export=download&id=14ALUlynlclWpJ-hqPauzicGANL7ghZ_y)




## OS-Explanation
```c
MRTOS_Task T1_LED_1;
MRTOS_Task T2_LED;
MRTOS_Task T3_LED_3;

void LED_1(void);
void LED_2(void);
void LED_3(void);

int main(void){

	(void)MRTOS_voidInit();

	/*****************		TASK 1 INIT		********************/
	T1_LED_1.taskID			=		1	;
	T1_LED_1.taskPriority		=		3	;
	T1_LED_1.taskPeriodicity	=		1	;
	T1_LED_1.taskStackSize		=		100 ;
	T1_LED_1.pTaskFcn			=		LED_1 ;
	(void)MRTOS_voidCreateTask(&T1_LED_1);

	/*****************		TASK 2 INIT		********************/
	T2_LED.taskID			=		2	;
	T2_LED.taskPriority		=		3	;
	T2_LED.taskPeriodicity	=		1	;
	T2_LED.taskStackSize		=		100 ;
	T2_LED.pTaskFcn			=		LED_2 ;
	(void)MRTOS_voidCreateTask(&T2_LED);

	/*****************		TASK 3 INIT		********************/
	T3_LED_3.taskID				=		3	;
	T3_LED_3.taskPriority		=		2	;
	T3_LED_3.taskPeriodicity	=		4	;
	T3_LED_3.taskStackSize		=		100 ;
	T3_LED_3.pTaskFcn			=		LED_3 ;
	(void)MRTOS_voidCreateTask(&T3_LED_3);
	
	/*****************		Active Tasks		*****************/
	(void)MRTOS_voidActiveTask(&T1_LED_1);
	(void)MRTOS_voidActiveTask(&T2_LED);
	(void)MRTOS_voidActiveTask(&T3_LED_3);


	/*****************		Start Scheduler		*****************/
	MRTOS_voidStartScheduler();
}
```
Main Stack Area 
![image](https://drive.google.com/uc?export=download&id=1Jop7xYAtZ9FgnOcyMiU9NLoRGihZqxmD)

Idle Task 
it just an `while(1)` doesn't need any space in stack.
![image](https://drive.google.com/uc?export=download&id=1GJ-0l9_-nRTzZQ4kTcyyEPeGM_GoxjeZ)  
Task 1 
![image](https://drive.google.com/uc?export=download&id=1r3-X-2guwQE5656b0FejRXCixM9gGwtS)  

All Tasks will be in the same way  
<div align="center">
<img src="https://drive.google.com/uc?export=download&id=1omwG-_u1cerwNZ2oYRlQAX19w4Cwg-Fm">
</div>

and you can see the context switching process in detail in this section <a href="#Context-Switching">Context-Switching</a> 

### Full Example  
Toggle Three Leds   
1. First Led toggle each 100 ms   
2. Second Led toggle each 300 ms  
3. Third Led toggle each 600 ms   

And Three Leds Have The Same Priority  
Code 
```c
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "NVIC_interface.h"
#include "EXTI_interface.h"
#include "AFIO_interface.h"
#include "PSRC_interface.h"

#include "../MRTOS/inc/MRTOS_Scheduler.h"



MRTOS_Task T1_LED_1;
MRTOS_Task T2_LED;
MRTOS_Task T3_LED_3;



void LED_1(void);
void LED_2(void);
void LED_3(void);
int i = 0 ;
int t1 = 0 , t2 = 0 , t3 = 0;

int main(void){

	(void)MRTOS_voidInit();
	/*****************		TASK 1 INIT		********************/
	T1_LED_1.taskID			=		1	;
	T1_LED_1.taskPriority		=		5	;
	T1_LED_1.taskStackSize		=		100 ;
	T1_LED_1.pTaskFcn			=		LED_1 ;
	(void)MRTOS_voidCreateTask(&T1_LED_1);

	/*****************		TASK 2 INIT		********************/
	T2_LED.taskID			=		2	;
	T2_LED.taskPriority		=		2	;
	T2_LED.taskStackSize		=		100 ;
	T2_LED.pTaskFcn			=		LED_2 ;
	(void)MRTOS_voidCreateTask(&T2_LED);

	/*****************		TASK 3 INIT		********************/
	T3_LED_3.taskID				=		3	;
	T3_LED_3.taskPriority		=		2	;
	T3_LED_3.taskStackSize		=		100 ;
	T3_LED_3.pTaskFcn			=		LED_3 ;
	(void)MRTOS_voidCreateTask(&T3_LED_3);

	/*****************		Active Tasks		*****************/
	(void)MRTOS_voidActiveTask(&T1_LED_1);
	(void)MRTOS_voidActiveTask(&T2_LED);
	(void)MRTOS_voidActiveTask(&T3_LED_3);

	/*****************		Start Scheduler		*****************/
	MRTOS_voidStartScheduler();
	while(1)
	{

	}

}

void LED_1(void)
{
	u8 LOC_u8isPressed = 0 ;
	/*			init clock			*/
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN2, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	while(1)
	{
		t1^=1 ;
		GPIO_voidTogglePinValue(PORTA,PIN2);
		MRTOS_voidTaskDelay(&T1_LED_1, 100);
	}

}
void LED_2(void)
{
	/*			init clock			*/
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN0, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	while(1)
	{
		t2^=1 ;
		GPIO_voidTogglePinValue(PORTA,PIN0);
		MRTOS_voidTaskDelay(&T2_LED, 300);
	}
}
void LED_3(void)
{
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN5, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	while(1)
	{
		t3 ^= 1;
		GPIO_voidTogglePinValue(PORTA, PIN5);
		MRTOS_voidTaskDelay(&T3_LED_3, 600);
		}
}
```
> Result
![image](https://drive.google.com/uc?export=download&id=1zMHE1qbxpbhGDcj7b36DhbhPPORs1-Rt)  
So when T3 Run, T1 and T2 should run in round-robin scheduling.  
When T3 run, T2 should Run Twice and T1 should run six times.

![image](https://drive.google.com/uc?export=download&id=1uvt9jGCT9P4t8RjAlGMsdMS7XQS7kHnk)


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

