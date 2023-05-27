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



MRTOS_Task T1_PushButton;
MRTOS_Task T2_LED;



void PushButton(void);
void LedControl(void);
void ToggleLed(void);
void t4_func(void);
int i = 0 ;
int t1 = 0 , t2 = 0 ;
extern u32 counter ;

MRTOS_CountingSamphore countingSem ;
int main(void){

	(void)MRTOS_voidInit();
	/*****************		TASK 1 INIT		********************/
	T1_PushButton.taskID			=		1	;
	T1_PushButton.taskPriority		=		3	;
	T1_PushButton.taskStackSize		=		100 ;
	T1_PushButton.pTaskFcn			=		PushButton ;
	(void)MRTOS_voidCreateTask(&T1_PushButton);



	/*****************		TASK 2 INIT		********************/
	T2_LED.taskID			=		2	;
	T2_LED.taskPriority		=		4	;
	T2_LED.taskStackSize		=		100 ;
	T2_LED.pTaskFcn			=		LedControl ;
	(void)MRTOS_voidCreateTask(&T2_LED);

	/****************	Ccounting Semaphores *************************/
	MRTOS_CreateCountingSemphore(&countingSem, 3 , 0);

	/*****************		Active Tasks		*****************/
	(void)MRTOS_voidActiveTask(&T1_PushButton);


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
	u8 getSemphCount = 0 ;
	while(1)
	{
		t1 ^=1 ;
		LOC_u8isPressed = GPIO_u8GetPinValue(PORTA, PIN2);
		if(LOC_u8isPressed == 0)
		{
			// Pressed
			MRTOS_IncrementCountingSemphore(&countingSem);
		}
		MRTOS_GetCountingSemphore(&countingSem, (u32*)&getSemphCount);
		if(getSemphCount == 3)
		{
			(void)MRTOS_voidActiveTask(&T2_LED);

		}
		else
		{


		}
		MRTOS_voidTaskDelay(&T1_PushButton, 20);


	}

}
void LedControl(void)
{
	/*			init clock			*/
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN0, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	u8 getSemphCount = 0 ;
	while(1)
	{
		t2 ^=1 ;
		MRTOS_DecrementCountingSemphore(&countingSem);
		MRTOS_GetCountingSemphore(&countingSem, (u32*)&getSemphCount);
		if(getSemphCount == 0)
		{

			MRTOS_voidTerminateTask(&T2_LED);
		}
	}
}

