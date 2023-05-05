
## Getting started  
- First of all The MRTOS is implemented for educational and learning purposes so it may exist some faults I didn't handle so u can upload them in the issue section or fork the project and try to add your modification.
- This is Version 0.1 `Under Development`

## Getting help 
Feel Free to contact me, just message me at <br/> Linkedin at `linkedin.com/in/abnaby` <br/> Facebook at `fb.com/imohamedabdo` <br/> with your question.
## Repository structure
This repository containsss the necessary files for MRTOS 
```bash
$ MRTOS
.
├── inc
│   ├── MRTOS_Porting.h 			-->	Is Used to Port MRTOS to different Processors/MCUs
|	├── MRTOS_Scheduler.h 			--> Function Prototypes of What is TASK and Supported APIs 
│   └── Queue Files					-->	Needed Files For Queue Implementation
├── src
│   ├── MRTOS_Porting.c				-->	Is Used to define all processor faults as weak fcn.
|	├── MRTOS_Scheduler.c			--> APIs Definition DO NOT EDIT ANYTHING HERE 
│   └── Queue Files					-->	Needed Files For Queue Implementation
├── HW 
|	└── Like Systick timer files	-->	Needed Files For the Ticker
├── examples					
└── README.md
```

## Porting Between Different Microprocessors.
If you Opened The `MRTOS_Porting.h` will find some of the tunable parameters. <br/>
the default parameters for MRTOS that designed to is, `Cortex M3` and `Cortex M4` but you can port `MRTOS` if use a different microprocessor. <br/>
in `MRTOS_Porting.h` exist 
| Param Name | Usage |  Options |
| ------ | ------ | ----- |
| __ CPU __ | This Macro is Used to select the processor to include <br/> the suitable APIs to access the processor register  | `CORTEX_M3` <br/> `CORTEX_M4` | 
| MAX_NUM_OF_TASKS | Write down maximum number of tasks | if define tasks more than defined will return error `ExceedMaxNumberOfTasks`|
| TICK_TIME | This Macro is used to define the tick time in microsecond | the default is 1 millisecond |
| _estack | TThis Symbol is defined for the top of stack defined by linkerscript (.ld) File | if your `ld` file uses another name change it to `_estack` |
| _eheap | This Symbol is defined for the top of heap defined by linkerscript (.ld) File | if your `ld` file uses another name change it to `_eheap` | 

in `MRTOS_Porting.h` if using another processor, then add your processor information

```c 
#if  !((__CPU__ == CORTEX_M3) ||( __CPU__ == CORTEX_M4))
//  CPU Name
#define _USER_DEFINED_CPU_         CORTEX_M7
#define _INCLUDE_CPU_LIB           "../Inc/PSRC_interface.h"
#endif
```
| Param Name | Usage | Note |
| ------ | ------ | ---- |
|_ USER_DEFINED_CPU _ | add CPU name |  |
|_ _INCLUDE_CPU_LIB _ | The Lib Path | add your include file with the same APIs name exist in <a href="">PSRC_interface file </a> | 

in `MRTOS_Porting.c` Exist all most popular faults for CPU in while(1) defined as weak function. 
```c
_attribute_(__WEAK__) void HardFault_Handler (void) { while(1); }

_attribute_(__WEAK__) void MemManage_Handler(void) { while(1); }
 
_attribute_(__WEAK__) void BusFault_Handler(void) { while(1); }
 
_attribute_(__WEAK__) void UsageFault_Handler(void) { while(1); }

```

## Development   
| Function Name | Usage |  Parameter | return |
| ------ | ------ |  ------ |  ------ |
| MRTOS_voidInit(void)  | This Function is used to initialize MRTOS. <br/> This Function Will initialize some of HW like systick timer of some of SW codes.| void | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>  |
| MRTOS_voidCreateTask(p2Task) | This Function is used to Create task stack area  |  `MRTOS_Task* pTask` - pointer to user defined <a href="#Task-Definition">Task</a> | `MRTOS_ErrorID` - one of <a href="#Error-Id">defined errors</a>    |


### Error-Id
| Error Name | Usage | 
| ------ | ------ | 
|  NoError | When The function executed successfully | 
| StackOverflow | When happen overflow during creating task  | 
| ErrorInQueueInit | Error in Queue Initialization | 
| ExceedMaxNumberOfTasks | Happens when number of tasks larger than defined in macro `MAX_NUM_OF_TASKS` in file `MRTOS_Porting.h` | 

### Task-Definition  
This struct defined as task with some User Accessible parameters and some of it Non Accessible by user.
```c
typedef struct
{
	//	User Accessible
	u8  				taskID		;				  
	u32					taskStackSize ;				  
	u8					taskPriority;				 
	ptrFunc				pTaskFcn ;			   
	u8					taskPeriodicity;			
	//  Non Accessible by user
	MRTOS_PrivTaskRef taskPrivateStates  // I know you wont listen, but don't ever touch this member.
}MRTOS_Task;
```
| Member Name | Usage | Notes |
| ------ | ------ | ----- |
| taskID | The ID of the Task | Select Number from `0` to `255`|
| taskStackSize |  Size Of Task in Bytes | |
| taskPriority | Priority of task |  Lowest number is Lowest Priority | 
| pTaskFcn | Pointer to Task  | 
| taskPeriodicity | The time intervals that the function should run on it| 
| taskPrivateStates | Non Accessible by user. check out that part for more <a href="#Task-Creation">details</a> | 


### Task-Creation
The Task is defined in <a href="#Task-Definition">struct</a> with some user-accessible members and some of them are non-accessible by the user. but is this part we will explain what the `MRTOS_ErrorID MRTOS_voidCreateTask(MRTOS_Task* pTask)` do in details 
First of all,I need to explain what is the `taskPrivateStates` struct contains 

``` taskPrivateStates Struct ```   

| Member Name | Usage | 
| ------ | ------ | 
| taskState | Current Task State <a href="#Task-States">Details</a>  | 
| _S_PSP_Task | Start Address of task in hardware stack | 
| _E_PSP_Task | End Address of task in hardware stack |  
| pCurrentPSP | Current stack pointer in function to know the last pushed item | 
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
- Align Some Safty Space by 1 byte
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
	 *r5, r6 , r7 ,r8 ,r9, r10,r11 (Saved/Restore) Manual    
	 ![CPU_REG](https://drive.google.com/uc?export=download&id=1Mccwymij9dtYbKaC3IH12wlC_J7Yv_6N)

	 **Noted That** The processor uses a full descending stack
	 ```c
	//	Set The Current SP pointed to The Last Item after creating task space
	pTask->taskPrivateStates.pCurrentPSP = (u32 *)pTask->taskPrivateStates._E_PSP_Task	;

	//	Decrease the value of the Current PSP
	DECREASE_PC_BY(pTask,1) ;
	//	Set Some of the RESET values for CPU Registers
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
***So After All of That*** you must know there are 16(CPU_Reg) * (4 bytes) = 64 bytes that exist in any created task but ignore this info when creating stack size.

### Task-States


### OS-Explanation
```c
MRTOS_Task T1_PushButton;
MRTOS_Task T2_LED;
MRTOS_Task T3_ToggleLED;

void PushButton(void);
void LedControl(void);
void ToggleLed(void);

int main(void){

	(void)MRTOS_voidInit();

	/*****************		TASK 1 INIT		********************/
	T1_PushButton.taskID			=		1	;
	T1_PushButton.taskPriority		=		3	;
	T1_PushButton.taskPeriodicity	=		1	;
	T1_PushButton.taskStackSize		=		100 ;
	T1_PushButton.pTaskFcn			=		PushButton ;
	(void)MRTOS_voidCreateTask(&T1_PushButton);

	/*****************		TASK 2 INIT		********************/
	T2_LED.taskID			=		2	;
	T2_LED.taskPriority		=		3	;
	T2_LED.taskPeriodicity	=		1	;
	T2_LED.taskStackSize		=		100 ;
	T2_LED.pTaskFcn			=		LedControl ;
	(void)MRTOS_voidCreateTask(&T2_LED);

	/*****************		TASK 3 INIT		********************/
	T3_ToggleLED.taskID				=		3	;
	T3_ToggleLED.taskPriority		=		2	;
	T3_ToggleLED.taskPeriodicity	=		4	;
	T3_ToggleLED.taskStackSize		=		100 ;
	T3_ToggleLED.pTaskFcn			=		ToggleLed ;
	(void)MRTOS_voidCreateTask(&T3_ToggleLED);
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
![image](https://drive.google.com/uc?export=download&id=1omwG-_u1cerwNZ2oYRlQAX19w4Cwg-Fm)

### Full Example  
Display numbers from 0 to 9 in Common Anode
> Hardware Setup  
![image]()
```c
```
> Result
![image]()

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

