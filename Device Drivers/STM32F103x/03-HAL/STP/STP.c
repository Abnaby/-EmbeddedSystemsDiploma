/**
* @file STP.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-08
*
*/

/******************************************************************************
* Includes
*******************************************************************************/

#include "STD_TYPES.h"
#include "COMMON.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "STK_interface.h"
#include "STP.h"



/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

#define _SERIAL_DATA_PP     (ptr_UserConfig->SerialDataPort) ,  (ptr_UserConfig->SerialDataPin) 
#define _SHIFT_CLK_PP       (ptr_UserConfig->ShiftClkPort) ,  (ptr_UserConfig->ShiftClkPin) 
#define _STOR_CLK_PP        (ptr_UserConfig->StoreClkPort) ,  (ptr_UserConfig->StoreClkPin) 



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
void STP_voidInit(STP_Config_t * ptr_UserConfig)
{
    /*  Init Pins   */
    GPIO_voidSetPinDirection(_SERIAL_DATA_PP,GPIO_OUTPUT_2MHZ_PUSH_PULL); 
    GPIO_voidSetPinDirection(_SHIFT_CLK_PP,GPIO_OUTPUT_2MHZ_PUSH_PULL); 
    GPIO_voidSetPinDirection(_STOR_CLK_PP,GPIO_OUTPUT_2MHZ_PUSH_PULL); 
    /* Init STK */
    STK_voidInit();
}
void STP_voidSendSynchronus(STP_Config_t * ptr_UserConfig , u8 copy_u8DataToSend)
{
    u8 LOC_u8Counter ; 
    u8 LOC_u8Bit   ; 
    for(LOC_u8Counter = 8 ; LOC_u8Counter>=1; LOC_u8Counter--) // if comp with 0 --> 0-1 = 255 cond is true
    {
        LOC_u8Bit = GET_BIT(copy_u8DataToSend , (LOC_u8Counter-1)) ; 
        GPIO_voidSetPinValue(_SERIAL_DATA_PP , u8 LOC_u8Bit);
        /*  Send Pulse to Shift Clk */
        GPIO_voidSetPinValue(_SHIFT_CLK_PP , HIGH);
        STK_voidSetBusyWait_US(1);
        GPIO_voidSetPinValue(_SHIFT_CLK_PP , LOW);
        STK_voidSetBusyWait_US(1);
    }
    /* Store Edge */
    GPIO_voidSetPinValue(_STOR_CLK_PP , HIGH);
    STK_voidSetBusyWait_US(1);
    GPIO_voidSetPinValue(_STOR_CLK_PP , LOW);
    STK_voidSetBusyWait_US(1);  

}



/************************************* End of File ******************************************/