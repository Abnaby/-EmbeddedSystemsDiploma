
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
void HardFault_Handler(void);
/******************* LAB *********************************/
volatile u8 IRQ_Flag , TaskA_IsReady , TaskB_IsReady ;
#define SET_PSP(ADDRESS) __asm("MOV r0,%0 \n\t MSR PSP , r0 " : : "r"(ADDRESS))
#define OS_GENERATE_EXC()   __asm("SVC #0x3");
#define	MSP_TO_PSP			        __asm(\
											"MRS R0,CONTROL \n\t"\
											"ORR R0,R0,#0b010   \n\t"\
											"MSR CONTROL,R0 ")
#define	PSP_TO_MSB           __asm(						\
									"MRS R0,CONTROL \n\t"\
									"AND R0,R0,#0b101   \n\t"\
									"MSR CONTROL,R0 ")

#define MAIN_STACK_SIZE 512
#define TASKA_SIZE 100
#define TASKB_SIZE 100

// Main Stack Boundaries
u32 _S_MSP ,_E_MSP ;
// Main Stack Boundaries  - TASK A
u32 _S_PSP_TASKA , _E_PSP_TASKA ;
// Main Stack Boundaries  - TASK B
u32 _S_PSP_TASKB , _E_PSP_TASKB ;

// extern symbol
extern u32 _estack ;

u32 TASKA(u32 a , u32 b , u32 c , u32 d)
{
	u32 res = a + b + c + d ;
	return res ;
}
u32 TASKB(u32 a , u32 b , u32 c , u32 d, u32 e)
{
	u32 res = a + b + c + d + e;
	return res ;
}


void MainOS()
{
	// Init Boundaries of Stack pointers
	// Main Stack Pointer
	_S_MSP = (u32) &_estack ;
	_E_MSP = _S_MSP - MAIN_STACK_SIZE ; // Decrement because ARM-Cortex has Full-Descending stack model

	// Process Stack of Task A
	_S_PSP_TASKA = _E_MSP - 8 ; // Add 2 Word as safety between stacks
	_E_PSP_TASKA = _S_PSP_TASKA - TASKA_SIZE ;

	// Process Stack of Task B
	_S_PSP_TASKB = _E_PSP_TASKA - 8 ; // Add 2 Word as safety between stacks
	_E_PSP_TASKB = _S_PSP_TASKB - TASKB_SIZE ;

	while(1)
	{
		if(TaskA_IsReady == 1)
		{
			TaskA_IsReady = 0;
			// Set PSP Reg = _S_PSP_TASKA
			SET_PSP(_S_PSP_TASKA);
			// SP --> PSP
			//(void)PSRC_voidSetUsageStackPointer(PSRC_PSP , 0);
			MSP_TO_PSP ;

			// Switch from Priv --> UnPriv
			PSRC_voidSetAccessLevel(PSRC_UNPRIVILEGED_ACCESS, 0) ;

			(void)TASKA(1,2,3,4);

			// Switch from Unpriv --> Priv
			OS_GENERATE_EXC();

			// SP --> MSP
			//(void)PSRC_voidSetUsageStackPointer(PSRC_MSP , 0);
			PSP_TO_MSB ;


		}
		else if (TaskB_IsReady == 1)
		{
			TaskB_IsReady = 0;
			// Set PSP Reg = _S_PSP_TASKA
			SET_PSP(_S_PSP_TASKB);
			// SP --> PSP
			//(void)PSRC_voidSetUsageStackPointer(PSRC_PSP , 0);
			MSP_TO_PSP ;
			// Switch from Priv --> UnPriv
			PSRC_voidSetAccessLevel(PSRC_UNPRIVILEGED_ACCESS, 0) ;

			(void)TASKB(1,2,3,4,5);

			// Switch from Unpriv --> Priv
			OS_GENERATE_EXC();

			// SP --> MSP
			//(void)PSRC_voidSetUsageStackPointer(PSRC_MSP , 0);
			PSP_TO_MSB ;

		}
	}



}
void temp();
int main(void){



	/*			init clock			*/
	RCC_voidInitSysClock();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN5, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	test++;
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
	MainOS();


}

void SVC_Handler (void)
{
	PSRC_voidSetAccessLevel(PSRC_PRIVILEGED_ACCESS, 0) ;

}

void EXTI0_Handler(void)
{
	if(IRQ_Flag == 0)
	{
		TaskA_IsReady = 1 ;
		IRQ_Flag = 1 ;
	}
	else
	{
		TaskB_IsReady = 1 ;
		IRQ_Flag = 0 ;
	}

}

/*
void temp()
{
	//SET_PSP(_S_PSP_TASKA); // __asm("MOV r0,%0 \n\t MSR PSP , r0 " : : "r"(ADDRESS))

	(void)PSRC_voidSetUsageStackPointer(PSRC_PSP , 0);

																		  __asm(
																			"MRS R0,CONTROL \n\t"
																			"ORR R0,R0,#0b010   \n\t"
																			"MSR CONTROL,R0 "
																		);

	test++;

}
*/

