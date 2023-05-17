/**
* @file MRTOS_Porting.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief this file consist of some of APIs that controls and hold CPU registers
* @version 0.1
* @date 2023-05-01
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "../MRTOS/inc/MRTOS_Porting.h"
#include "../MRTOS/inc/queueInterfaces.h"

#if (__CPU__ == CORTEX_M3) ||( __CPU__ == CORTEX_M4)
#include "../Inc/PSRC_interface.h"			// Include Processor Libraries
#else
    #error "Undefined CPU."
#endif 



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

_attribute_(__NACKED__) void SVC_Handler(void)
{
  __asm(
    "TST lr, #4\n"
    "ITE EQ\n"
    "MRSEQ r0, MSP\n"
    "MRSNE r0, PSP\n"
    "B SVC_Handler_Main\n"
  ) ;
}


/************************************* End of File ******************************************/

