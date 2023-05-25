#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "NVIC_interface.h"
#include "EXTI_interface.h"
#include "AFIO_interface.h"
#include "PSRC_interface.h"

#include "../MRTOS/inc/MRTOS_Scheduler.h"

volatile u8 test ;
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}




MRTOS_Task T1_PushButton;
MRTOS_Task T2_LED;
MRTOS_Task T3_ToggleLED;
MRTOS_Task T4_SuspendTask;



void PushButton(void);
void LedControl(void);
void ToggleLed(void);
void t4_func(void);
int i = 0 ;
int t1 = 0 , t2 = 0 , t3 = 0,t4= 0;
extern u32 counter ;

int main(void){

	(void)MRTOS_voidInit();
	/*****************		TASK 1 INIT		********************/
	T1_PushButton.taskID			=		1	;
	T1_PushButton.taskPriority		=		5	;
	T1_PushButton.taskStackSize		=		100 ;
	T1_PushButton.pTaskFcn			=		PushButton ;
	(void)MRTOS_voidCreateTask(&T1_PushButton);



	/*****************		TASK 2 INIT		********************/
	T2_LED.taskID			=		2	;
	T2_LED.taskPriority		=		2	;
	T2_LED.taskStackSize		=		100 ;
	T2_LED.pTaskFcn			=		LedControl ;
	(void)MRTOS_voidCreateTask(&T2_LED);



	/*****************		TASK 3 INIT		********************/
	T3_ToggleLED.taskID				=		3	;
	T3_ToggleLED.taskPriority		=		2	;
	T3_ToggleLED.taskStackSize		=		100 ;
	T3_ToggleLED.pTaskFcn			=		ToggleLed ;
	(void)MRTOS_voidCreateTask(&T3_ToggleLED);

	/*****************		TASK 4 INIT		********************/
	T4_SuspendTask.taskID				=		4	;
	T4_SuspendTask.taskPriority		=		2	;
	T4_SuspendTask.taskStackSize		=		100 ;
	T4_SuspendTask.pTaskFcn			=		t4_func ;
	(void)MRTOS_voidCreateTask(&T4_SuspendTask);

	/*****************		Active Tasks		*****************/
	(void)MRTOS_voidActiveTask(&T1_PushButton);
	(void)MRTOS_voidActiveTask(&T2_LED);
	(void)MRTOS_voidActiveTask(&T3_ToggleLED);


	/*****************		Start Scheduler		*****************/

	MRTOS_voidStartScheduler();


}

void PushButton(void)
{
	u8 LOC_u8isPressed = 0 ;
	/*			init clock			*/
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN2, GPIO_PULLUP_PULLDOWN);
	GPIO_u8ChoosePullMode(PORTA, PIN2, GPIO_PULL_UP);
	while(1)
	{
		//LOC_u8isPressed = GPIO_u8GetPinValue(PORTA, PIN2);
		t1 ^=1 ;
		counter++ ;
		if(counter == (6509078/3))
		{
			MRTOS_voidTaskDelay(&T1_PushButton, 2000);
			counter = 0 ;
		}
	}

}
void LedControl(void)
{
	/*			init clock			*/
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN0, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	while(1)
	{
		//GPIO_voidSetPinValue(PORTA,PIN0,HIGH);
		t2  ^=1 ;

	}
}
void ToggleLed(void)
{
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN5, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	while(1)
	{
		//GPIO_voidTogglePinValue(PORTA, PIN5);
		t3 ^=1 ;
	}
}

void t4_func(void)
{
	while(1)
	{
		t4 ^=1 ;
	}
}
