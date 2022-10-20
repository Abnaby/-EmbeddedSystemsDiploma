/**
* @file LCD.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-08
*
*/

/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "LCD.h"
#include <util/delay.h>





/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/
#define ACCESS_STRUCT(STRUCT,MEMBER) (STRUCT->MEMBER) 

#define READ_DATA_FRM_LCD(SRCT_NAME)            (GPIO_voidSetPinValue(EN_PORT_PIN(SRCT_NAME),HIGH))
#define WRITE_DATA_TO_LCD(SRCT_NAME)            GPIO_voidSetPinValue(EN_PORT_PIN(SRCT_NAME),HIGH);\
												WAIT_MS(1);\
												GPIO_voidSetPinValue(EN_PORT_PIN(SRCT_NAME),LOW);\
                                                WAIT_MS(20);
#define _4_WIRE_MODE	0
#define _8_WIRE_MODE	1


// commands
#define LCD_FUNCTION_8BIT_2LINES   					(0x38)
#define LCD_FUNCTION_4BIT_2LINES   					(0x28)
#define LCD_MOVE_DISP_RIGHT       					(0x1C)
#define LCD_MOVE_DISP_LEFT   						(0x18)
#define LCD_MOVE_CURSOR_RIGHT   					(0x14)
#define LCD_MOVE_CURSOR_LEFT 	  					(0x10)
#define LCD_DISP_OFF   								(0x08)
#define LCD_DISP_ON_CURSOR   						(0x0E)
#define LCD_DISP_ON_CURSOR_BLINK   					(0x0F)
#define LCD_DISP_ON_BLINK   						(0x0D)
#define LCD_DISP_ON   								(0x0C)
#define LCD_ENTRY_DEC   							(0x04)
#define LCD_ENTRY_DEC_SHIFT   						(0x05)
#define LCD_ENTRY_INC_   							(0x06)
#define LCD_ENTRY_INC_SHIFT   						(0x07)
#define LCD_BEGIN_AT_FIRST_ROW						(0x80)
#define LCD_BEGIN_AT_SECOND_ROW						(0xC0)
#define LCD_CLEAR_SCREEN							(0x01)
#define LCD_ENTRY_MODE								(0x06)
#define LCD_RETURN_HOME								(0x02) // point to DDRAM


/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
//                                         (                        PORTx           ,               PINx                     )
#define EN_PORT_PIN(STCT_NAME)             ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[0],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[1]
#define RS_PORT_PIN(STCT_NAME)             ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[2],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[3]
#if LCD_Mode == _8_WIRE_MODE 
	#define _8_D0_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[4],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[5]
	#define _8_D1_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[6],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[7]
	#define _8_D2_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[8],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[9]
	#define _8_D3_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[10],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[11]
	#define _8_D4_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[12],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[13]
	#define _8_D5_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[14],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[15]
	#define _8_D6_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[16],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[17]
	#define _8_D7_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[18],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[19]
#elif LCD_Mode == _4_WIRE_MODE 
	#define _4_D4_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[4],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[5]
	#define _4_D5_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[6],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[7]
	#define _4_D6_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[8],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[9]
	#define _4_D7_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[10],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[11]
#endif




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/



/******************************************************************************
* Function Prototypes
*******************************************************************************/
static void LCD_voidWriteCmd(LCD_Config* x , u8 copy_u8Cmd);
#define WAIT_MS(x) _delay_ms(x)



/******************************************************************************
* Function Definitions
*******************************************************************************/


void LCD_voidInit(LCD_Config* ptr_cfg)
{
    // Switch on Mode	
	#if LCD_Mode == _8_WIRE_MODE 
        // Init D0 --> D7 
        GPIO_voidSetPinDirection(_8_D0_PORT_PIN(ptr_cfg),OUTPUT);  //DB0
        GPIO_voidSetPinDirection(_8_D1_PORT_PIN(ptr_cfg),OUTPUT);  //DB1
        GPIO_voidSetPinDirection(_8_D2_PORT_PIN(ptr_cfg),OUTPUT);  //DB2
        GPIO_voidSetPinDirection(_8_D3_PORT_PIN(ptr_cfg),OUTPUT);  //DB3
        GPIO_voidSetPinDirection(_8_D4_PORT_PIN(ptr_cfg),OUTPUT);  //DB4
        GPIO_voidSetPinDirection(_8_D5_PORT_PIN(ptr_cfg),OUTPUT);  //DB5
        GPIO_voidSetPinDirection(_8_D6_PORT_PIN(ptr_cfg),OUTPUT);  //DB6
        GPIO_voidSetPinDirection(_8_D7_PORT_PIN(ptr_cfg),OUTPUT);  //DB7 
		 
        GPIO_voidSetPinDirection(RS_PORT_PIN(ptr_cfg),OUTPUT);  //RS   
        GPIO_voidSetPinDirection(EN_PORT_PIN(ptr_cfg),OUTPUT);  //EN   
		 
		LCD_voidWriteCmd(ptr_cfg , LCD_FUNCTION_8BIT_2LINES) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_FUNCTION_8BIT_2LINES) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_CLEAR_SCREEN) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_DISP_ON_CURSOR_BLINK) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_BEGIN_AT_FIRST_ROW) ;
		
        /********************************** END OF INITILIZATION *****************************************************/      
	#elif LCD_Mode == _4_WIRE_MODE
        // Init D3 --> D7 
        GPIO_voidSetPinDirection(_4_D4_PORT_PIN(ptr_cfg),OUTPUT);  //DB4
        GPIO_voidSetPinDirection(_4_D5_PORT_PIN(ptr_cfg),OUTPUT);  //DB5
        GPIO_voidSetPinDirection(_4_D6_PORT_PIN(ptr_cfg),OUTPUT);  //DB6
        GPIO_voidSetPinDirection(_4_D7_PORT_PIN(ptr_cfg),OUTPUT);  //DB7 
		 
        GPIO_voidSetPinDirection(RS_PORT_PIN(ptr_cfg),OUTPUT);  //RS   
        GPIO_voidSetPinDirection(EN_PORT_PIN(ptr_cfg),OUTPUT);  //EN   
		
		LCD_voidWriteCmd(ptr_cfg , LCD_RETURN_HOME) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_FUNCTION_4BIT_2LINES) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_CLEAR_SCREEN) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_DISP_ON_CURSOR_BLINK) ;
		LCD_voidWriteCmd(ptr_cfg , LCD_BEGIN_AT_FIRST_ROW) ;
		/********************************** END OF INITILIZATION *****************************************************/    
	#endif
	_delay_ms(2);
}
void LCD_voidSendChar(LCD_Config* ptrCnfg , u8 copy_u8data)
{
    /* 
    *    Enter Data Mode
    *               RS = 1 
    */

#if LCD_Mode == _8_WIRE_MODE 
		// Add data in Data Line
        GPIO_voidSetPinValue(_8_D0_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,0));  //DB0
        GPIO_voidSetPinValue(_8_D1_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,1));  //DB1
        GPIO_voidSetPinValue(_8_D2_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,2));  //DB2
        GPIO_voidSetPinValue(_8_D3_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,3));  //DB3
        GPIO_voidSetPinValue(_8_D4_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,4));  //DB4
        GPIO_voidSetPinValue(_8_D5_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,5));  //DB5
        GPIO_voidSetPinValue(_8_D6_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,6));  //DB6
        GPIO_voidSetPinValue(_8_D7_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,7));  //DB7 
		GPIO_voidSetPinValue(RS_PORT_PIN(ptrCnfg) , HIGH) ;
		WRITE_DATA_TO_LCD(ptrCnfg);
#elif LCD_Mode == _4_WIRE_MODE
		// Add data in Data Line
        GPIO_voidSetPinValue(_4_D4_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,4));  //DB4
        GPIO_voidSetPinValue(_4_D5_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,5));  //DB5
        GPIO_voidSetPinValue(_4_D6_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,6));  //DB6
        GPIO_voidSetPinValue(_4_D7_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,7));  //DB7 
		GPIO_voidSetPinValue(RS_PORT_PIN(ptrCnfg) , HIGH) ;
		WRITE_DATA_TO_LCD(ptrCnfg);
        GPIO_voidSetPinValue(_4_D4_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,0));  //DB4
        GPIO_voidSetPinValue(_4_D5_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,1));  //DB5
        GPIO_voidSetPinValue(_4_D6_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,2));  //DB6
        GPIO_voidSetPinValue(_4_D7_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,3));  //DB7 
		GPIO_voidSetPinValue(RS_PORT_PIN(ptrCnfg) , HIGH) ;
		WRITE_DATA_TO_LCD(ptrCnfg);
#endif
}

void LCD_voidSendString(LCD_Config* ptrCnfg , u8* ptr_u8data)
{
	u8 index =0 ; 
	while(ptr_u8data[index] != '\0')
	{
		LCD_voidSendChar(ptrCnfg,ptr_u8data[index]);
		index++;
	}
}

void LCD_voidSendStringAt(LCD_Config* ptrCnfg , u8* ptr_u8data, u8 x , u8 y )
{
	
		
}
void LCD_voidSetCursorType(LCD_Config*  ptrLCD ,cursorType copy_cursorType)
{
	LCD_voidWriteCmd(ptrLCD, copy_cursorType) ;
}
void LCD_voidSetDisplayState (LCD_Config*  ptrLCD ,u8 displayState)
{
	switch(displayState)
	{
		case DISP_OFF : 
			LCD_voidWriteCmd(ptrLCD,LCD_DISP_OFF);
			break;
		default:
			LCD_voidWriteCmd(ptrLCD,LCD_DISP_ON);
	}
			
		
}
void LCD_voidGotoXY(LCD_Config* ptrCnfg , u8 x , u8 y)
{
	/*
	 -----------   
	 | DDRAM     | 0x00
	 |           |			for Row 0 and in between 0x00 -> 0x0f select Col
	 |           |	
	 |           | 0x0f	
 
	 | DDRAM     | 0x40
	 |           |			for Row 1 and in between 0x40 -> 0x4f select Col
	 |           |	
	 |           | 0x4f	
	*/
	u8 address = 0 ; 
	if( y < ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Rows) && x < ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols) )
	{
		 /* Using Set DDRAM Address cmd 
		 *	RS 0
		 *  RW 0 --> 0 by default
		 *  D7 1
		 * ADD
		 */	
		 address = y * 0x40 + x;		/*	If 0 --> Row 1 , If 0x40 Row 2	*/
		 address = address ;		/* To Goto x position	*/
		 address |= (1 << 7) ;

		LCD_voidWriteCmd(ptrCnfg , address);

		
	}

}
void LCD_voidClear(LCD_Config* x)
{
	LCD_voidWriteCmd(x,LCD_CLEAR_SCREEN);	
	WAIT_MS(1);		
	LCD_voidWriteCmd(x , LCD_BEGIN_AT_FIRST_ROW) ;
}
void LCD_voidStoreCustomChar(LCD_Config*  ptrLCD ,u8* ptrToArray, u8 copy_u8CharIndex)
{
	u8 address = 0 ,index ; 
	/*		Have 8 Places Only for Custom Char Can Store in CGRAM	*/
	if(copy_u8CharIndex < 8 )
	{
		address = copy_u8CharIndex * 0x08 ;
		// To Make DDRAM point to CGROM
		/*
		*	Set CGRAM address
		*		RS = 0 
		*		RW = 0 
		*		D7 = 0 
		*		D6 = 1
		*		D0:D6 Address
		*/
		address |= (1<<6) ; 
		LCD_voidWriteCmd(ptrLCD,address);
		for(index = 0 ; index < 8 ; index++)
		{
			LCD_voidSendChar(ptrLCD,ptrToArray[index]);
		}
		// Restore point to DDRAM OPTIONAL by default display from DDRAM
		LCD_voidWriteCmd(ptrLCD,LCD_RETURN_HOME);
		
	}
	
}
void LCD_voidDispCustomChar(LCD_Config*  ptrLCD , u8 storedCharIndex)
{

	LCD_voidSendChar(ptrLCD,storedCharIndex);
	
	
}
/************************************ Static FCNs**********************************/
void LCD_voidWriteCmd(LCD_Config* x , u8 copy_u8Cmd)
{
/* 
*    Enter CMD Mode
*               RS = 0 
*               RW = 0 -->BY DEFAULT
*/

#if LCD_Mode == _8_WIRE_MODE 
		// Add CMD in Data Line
        GPIO_voidSetPinValue(_8_D0_PORT_PIN(x),GET_BIT(copy_u8Cmd,0));  //DB0
        GPIO_voidSetPinValue(_8_D1_PORT_PIN(x),GET_BIT(copy_u8Cmd,1));  //DB1
        GPIO_voidSetPinValue(_8_D2_PORT_PIN(x),GET_BIT(copy_u8Cmd,2));  //DB2
        GPIO_voidSetPinValue(_8_D3_PORT_PIN(x),GET_BIT(copy_u8Cmd,3));  //DB3
        GPIO_voidSetPinValue(_8_D4_PORT_PIN(x),GET_BIT(copy_u8Cmd,4));  //DB4
        GPIO_voidSetPinValue(_8_D5_PORT_PIN(x),GET_BIT(copy_u8Cmd,5));  //DB5
        GPIO_voidSetPinValue(_8_D6_PORT_PIN(x),GET_BIT(copy_u8Cmd,6));  //DB6
        GPIO_voidSetPinValue(_8_D7_PORT_PIN(x),GET_BIT(copy_u8Cmd,7));  //DB7 
		GPIO_voidSetPinValue(RS_PORT_PIN(x) , LOW) ;
		WRITE_DATA_TO_LCD(x);
		 

#elif LCD_Mode == _4_WIRE_MODE
		// Add CMD in Data Line

        GPIO_voidSetPinValue(_4_D4_PORT_PIN(x),GET_BIT(copy_u8Cmd,4));  //DB4
        GPIO_voidSetPinValue(_4_D5_PORT_PIN(x),GET_BIT(copy_u8Cmd,5));  //DB5
        GPIO_voidSetPinValue(_4_D6_PORT_PIN(x),GET_BIT(copy_u8Cmd,6));  //DB6
        GPIO_voidSetPinValue(_4_D7_PORT_PIN(x),GET_BIT(copy_u8Cmd,7));  //DB7 
		GPIO_voidSetPinValue(RS_PORT_PIN(x) , LOW) ;
		WRITE_DATA_TO_LCD(x);		
        GPIO_voidSetPinValue(_4_D4_PORT_PIN(x),GET_BIT(copy_u8Cmd,0));  //DB4
        GPIO_voidSetPinValue(_4_D5_PORT_PIN(x),GET_BIT(copy_u8Cmd,1));  //DB5
        GPIO_voidSetPinValue(_4_D6_PORT_PIN(x),GET_BIT(copy_u8Cmd,2));  //DB6
        GPIO_voidSetPinValue(_4_D7_PORT_PIN(x),GET_BIT(copy_u8Cmd,3));  //DB7 	
		GPIO_voidSetPinValue(RS_PORT_PIN(x) , LOW) ;
		WRITE_DATA_TO_LCD(x);		

#endif
}

/************************************* End of File ******************************************/