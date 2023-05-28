/**
* @file MRTOS_Porting.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief this file consist of some of APIs that controls and hold CPU registers
* @version 1.5
* @date 2023-05-28
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "../MRTOS/inc/MRTOS_Porting.h"





/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

#define _attribute_(ATT)  __attribute__ ((ATT))
#define __WEAK__	weak
#define __NACKED__	naked
/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/
void MRTOS_voidHardwareInit(void)
{
	/* To initialize the STK driver */
	STK_voidInit();
	STK_voidStopSystick();
	/*	Set Priorities	*/
    // Set the PendSV interrupt priority to the lowest level
	*(volatile u32 *)0xE000ED22 = 0xFF;

    // Set the SysTick interrupt priority to the highest level
	*(volatile u32 *)0xE000ED23 = 0x00;

}

void MRTOS_voidStartTicker(void (*callBack)(void))
{
	/*	Start Systick */
	STK_voidStartSystick();
	/* To pass the scheduler function to the systick ISR */
	STK_voidSetIntervalPeriodic(TICK_TIME , callBack);
}


void MRTOS_voidCallService(u8 copy_u8ServiceID)
{
	switch(copy_u8ServiceID)
	{
		case 0 :
			__asm("SVC #0x00");
			break;
		case 1 :
			__asm("SVC #0x01");
			break;
		case 2 :
			__asm("SVC #0x02");
			break;
		case 3 :
			__asm("SVC #0x03");
			break;
	}

}
/******************************************************************************
* IRQ Faults
*******************************************************************************/
_attribute_(weak) void HardFault_Handler (void)
  {
  	while(1);
  }

_attribute_(weak) void MemManage_Handler(void)
  {
  	while(1);
  }

_attribute_(weak) void BusFault_Handler(void)
  {
  	while(1);
  }

_attribute_(__WEAK__) void UsageFault_Handler(void)
  {
  	while(1);
  }

/******************************************************************************
* IRQ Handler
*******************************************************************************/

__attribute ((naked)) void SVC_Handler(void)
{
  __asm(
    "TST lr, #4\n"
    "ITE EQ\n"
    "MRSEQ r0, MSP\n"
    "MRSNE r0, PSP\n"
    "B _MRTOS_SVC_CALL_ \n"
  ) ;
}

/*
_attribute_(__NACKED__) void PenmdSV_Handler(void)

{
	// Context Switching
	MRTOS_voidContextSwitching();

}
*/

/************************************* End of File ******************************************/

