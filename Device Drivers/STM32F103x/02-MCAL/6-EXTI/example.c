
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "SCB_interface.h"
#include "NVIC_interface.h"
#include "EXTI_interface.h"
#include "AFIO_interface.h"

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

void xxx(void);

void main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN5, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	/*			SET PRIORITY	*/
	SCB_voidSetPriorityGrouping(SCB_4_GROUP_4_SUB_GROUP);
	NVIC_voidSetIRQ_PriorityGrouping(6, 3, 2);	//EXTI0
	NVIC_voidEnableInterrupt(6);
	/*		AFIO Init			*/
	AFIO_voidEXTIConfiguration(EXTI_LINE0, PORTA);
	/*		EXTI_INIT			*/
	EXTI_voidInitLine(EXTI_LINE0, EXTI_ON_CHANGE);
	/*		Set Callback		*/
	EXTI_voidSetCallBackFCN(EXTI_LINE0, xxx);
	/*	Enable Interrupt	*/
	EXTI_voidEnableEXTI(EXTI_LINE0);
	while(1){



	}

}

void xxx(void)
{

	GPIO_voidTogglePinValue(PORTA, PIN5);
}

