/**
* @file max7221.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-13
*
*/

/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "SPI_Interface.h"
#include "max7221.h"




/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/
/*                                 ADRESSING                                 */
#define MAX7221_NO_OP                   (0x00)
#define MAX7221_DIGIT_0                 (0x01)
#define MAX7221_DIGIT_1                 (0x02)
#define MAX7221_DIGIT_2                 (0x03)
#define MAX7221_DIGIT_3                 (0x04)
#define MAX7221_DIGIT_4                 (0x05)
#define MAX7221_DIGIT_5                 (0x06)
#define MAX7221_DIGIT_6                 (0x07)
#define MAX7221_DIGIT_7                 (0x08)
#define MAX7221_DECODE_MODE             (0x09)       // SEE @ref DECODE_MOD
#define MAX7221_INTENSITY               (0x0A)       // SEE @ref INTENSITY_OPTION
#define MAX7221_SCAN_LIMIT              (0x0B)       // SEE @ref Modes_of_Scan
#define MAX7221_SHUTDOWN                (0x0C)       // SEE @ref Modes_of_Operation
#define MAX7221_DISP_TEST               (0x0F)       // SEE @ref TST_MODE
/*                               DATA                                     */

//@ref Modes_of_Operation
#define MAX7221_SHUTDOWN_OP             (0x0)
#define MAX7221_NORMAL_OP               (0x01)
//@ref DECODE_MOD
#define MAX7221_NO_DECODE               (0x00)
#define MAX7221_B_DECODE_DIG_0          (0x01)
#define MAX7221_B_DECODE_DIG_0_3        (0x0F)
#define MAX7221_B_DECODE_DIG_0_7        (0xFF)
//ref Modes_of_Scan
#define MAX7221_DIG_0_ONLY              (0x00)
#define MAX7221_DIG_0_1                 (0x01)
#define MAX7221_DIG_0_2                 (0x02)
#define MAX7221_DIG_0_3                 (0x03)
#define MAX7221_DIG_0_4                 (0x04)
#define MAX7221_DIG_0_5                 (0x05)
#define MAX7221_DIG_0_6                 (0x06)
#define MAX7221_DIG_0_7                 (0x07)
//@ref TST_MODE
#define MAX7221_NORM_OPERATION          (0x00)
#define MAX7221_TEST_MOD                (0x01)
//@ref INTENSITY_OPTION
#define MAX7221_1OV32_INT               (0x00)
#define MAX7221_3OV32_INT               (0x01)
#define MAX7221_5OV32_INT               (0x02)
#define MAX7221_7OV32_INT               (0x03)
#define MAX7221_9OV32_INT               (0x04)
#define MAX7221_11OV32_INT              (0x05)
#define MAX7221_13OV32_INT              (0x06)
#define MAX7221_15OV32_INT              (0x07)
#define MAX7221_17OV32_INT              (0x08)
#define MAX7221_19OV32_INT              (0x09)
#define MAX7221_21OV32_INT              (0x0A)
#define MAX7221_23OV32_INT              (0x0B)
#define MAX7221_25OV32_INT              (0x0C)
#define MAX7221_27OV32_INT              (0x0D)
#define MAX7221_29OV32_INT              (0x0E)
#define MAX7221_31OV32_INT              (0x0F)










/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
SPI_Config MAX7221_PRIV_SPI =	
{
    SPI_INTERRUPT_DISABLE  ,
    SPI_MSB_FIRST   ,
    SPI_MASTER    ,
    SPI_IDLE_LOW   ,
    SPI_LEADING_EDGE  ,
    SPI_Fosc_OVER_4	

};
MAX7221_Config *Global_ptr_customConfig ; 

/******************************************************************************
* Function Prototypes
*******************************************************************************/

static void max7221_sendADD_DATA(u8 address , u8 data); 


/******************************************************************************
* Function Definitions
*******************************************************************************/

void MAX7221_Init(MAX7221_Config *ptr_customConfig) 
{
	Global_ptr_customConfig = ptr_customConfig ; 
	u8 SCAN_MODE_SELECT = ptr_customConfig->selecrDispSize ; 
	GPIO_voidSPI_MasterInit();
    MCAL_SPI_voidInit(&MAX7221_PRIV_SPI);
	/*	Decode Mode	*/
	max7221_sendADD_DATA(MAX7221_DECODE_MODE,MAX7221_B_DECODE_DIG_0_7);  
    /*  Scan Limit : Full    */
	max7221_sendADD_DATA(MAX7221_SCAN_LIMIT,SCAN_MODE_SELECT);	
    /*  Operation  : Normal */
	max7221_sendADD_DATA(MAX7221_SHUTDOWN,MAX7221_NORMAL_OP);
    /*  Intenisty : Full    */
	max7221_sendADD_DATA(MAX7221_INTENSITY,MAX7221_31OV32_INT);

} 
void MAX7221_SendData(u8 copy_u8data, u8 copy_u8DispNumber) 
{
    copy_u8DispNumber = copy_u8DispNumber + 1 ; 
    if(copy_u8DispNumber >= 1 && copy_u8DispNumber <= (Global_ptr_customConfig->selecrDispSize+1))
    {
		max7221_sendADD_DATA(copy_u8DispNumber,copy_u8data);
    }
}
void MAX7221_DispState(MAX7221_Disp_State copy_state)
{
    switch (copy_state)
    {
    case MAX7221_OFF : 
		max7221_sendADD_DATA(MAX7221_SHUTDOWN,MAX7221_SHUTDOWN_OP);
        break;
    default:
        /*  Operation  : Normal */
		max7221_sendADD_DATA(MAX7221_SHUTDOWN,MAX7221_NORMAL_OP);
        break;
    }

}
void MAX7221_Disp_Intensity(u8 copy_u8Brightness)
{
    if(copy_u8Brightness >= 0 && copy_u8Brightness <= 15)
    {
		max7221_sendADD_DATA(MAX7221_INTENSITY,copy_u8Brightness);

    }
}

/************************************* Static	********************************************/
void max7221_sendADD_DATA(u8 address , u8 data)
{
    GPIO_voidSetPinValue(PORTB,PIN4,LOW) ;
	MCAL_SPI_voidSendByteAsynch(address); 
	MCAL_SPI_voidSendByteAsynch(data); 
    GPIO_voidSetPinValue(PORTB,PIN4,HIGH) ;
}

/************************************* End of File ******************************************/