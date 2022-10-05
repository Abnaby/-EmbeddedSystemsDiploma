/**
* @file WDT_Program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-05
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "WDT_Interface.h"
#include "WDT_Config.h"
#include "WDT_Private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




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
void WDT_voidStart(WDT_timeOut selectPredefinedTimeOut)
{
    // Enable WDT
    WDT_WDTCR |= (1<< WDTCR_WDTE);
    /*  CHK INPUTS  */
    if(selectPredefinedTimeOut >= 0b000 && selectPredefinedTimeOut <= 0b111)
    {
        // Set Prescaler 
        WDT_WDTCR |= (selectPredefinedTimeOut << 0) ; 
    }
    else
    {
        // <!TODO> ERROR IN PREDEFINED VALUES
    }

}

void WDT_voidStop(void)
{
    // In the same operation, write a logic one to WDTOE and WDE. 
    WDT_WDTCR |= (1 << WDTCR_WDTOE) | (1 << WDTCR_WDTE) ; 
    // Within the next four clock cycles, write a logic 0 to WDE. This disables the Watchdog
    WDT_WDTCR = 0x00 ; 
}

/************************************* End of File ******************************************/