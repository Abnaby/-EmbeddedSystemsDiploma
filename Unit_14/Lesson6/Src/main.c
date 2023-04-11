#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "NVIC_interface.h"
#include "EXTI_interface.h"
#include "AFIO_interface.h"
#include "PSRC_interface.h"

volatile u8 test ;
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

void EXTI0_Handler(void);

#define EnablePrivilegedMode() __asm("SVC #0")


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
	PSRC_voidSetAccessLevel(PSRC_UNPRIVILEGED_ACCESS);
	EnablePrivilegedMode();
	/**********************************************************************/
	while(1){

		if(test){
			test = 0 ;
			PSRC_voidSetUsageStackPointer(_MSP);

		}

	}
}

void EXTI0_Handler(void)
{

	/**************************** TRY ASSEMBLY	***************************/
	test = 1 ;

	PSRC_voidSetAccessLevel(PSRC_PRIVILEGED_ACCESS);

	/**********************************************************************/
}

__attribute__((naked)) void SVC_Handler(void)
{
  __asm(
    "TST lr, #4\n"
    "ITE EQ\n"
    "MRSEQ r0, MSP\n"
    "MRSNE r0, PSP\n"
    "B SVC_Handler_Main\n"
  ) ;
}

void SVC_Handler_Main( unsigned int *svc_args )
{

  /*
  * Stack contains:
  * r0, r1, r2, r3, r12, r14, the return address and xPSR
  * First argument (r0) is svc_args[0]
  */
  u8 svc_number = 	*((u8 *)(((u8*)svc_args[6])-2)) ;
  switch( svc_number )
  {
    case 0:  /* EnablePrivilegedMode */
    	PSRC_voidSetAccessLevel(PSRC_PRIVILEGED_ACCESS);
      break;
    default:    /* unknown SVC */
      break;
  }
}


void HardFault_Handler(void)
{
	test = 0 ;

}
