
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "NVIC_interface.h"
#include "EXTI_interface.h"
#include "AFIO_interface.h"
volatile u8 test ;
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

void EXTI0_Handler(void);


u32 Glob_u32ControlReg =  6 , Glob_u32xPSR = 6 ;

int main(void){





	/*			init clock			*/
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN5, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	/*		Enable Interrupt		*/
	NVIC_voidEnableInterrupt(6);
	/*		AFIO Init			*/
	AFIO_voidEXTIConfiguration(EXTI_LINE0, PORTA);
	/*		EXTI_INIT			*/
	EXTI_voidInitLine(EXTI_LINE0, EXTI_RISING);
	/*		Set Callback		*/
	EXTI_voidSetCallBackFCN(EXTI_LINE0, EXTI0_Handler);
	/*	Enable Interrupt	*/
	EXTI_voidEnableEXTI(EXTI_LINE0);
	/**************************** TRY ASSEMBLY	***************************/
	__asm("nop\n \tnop");


	__asm("MRS %[OUT],CONTROL\t\n"
			:[OUT]"=r"(Glob_u32ControlReg)	);

	__asm("nop\n \tnop");


	/**********************************************************************/
	while(1){

		if(test)
			test = 0 ;

	}
}

void EXTI0_Handler(void)
{

	/**************************** TRY ASSEMBLY	***************************/
	__asm("nop\n \tnop");


	__asm("MRS %[OUT],PSR\t\n"
			:[OUT]"=r"(Glob_u32xPSR)	);

	__asm("nop\n \tnop");

 
	/**********************************************************************/
}

