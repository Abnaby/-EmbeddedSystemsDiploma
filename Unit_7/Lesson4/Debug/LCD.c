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
												LCD_delay_us(1);\
												GPIO_voidSetPinValue(EN_PORT_PIN(SRCT_NAME),LOW);
                                                
#define _4_WIRE_MODE	0
#define _8_WIRE_MODE	1


// commands
#define  _LCD_CLEAR				 0x01
#define  _LCD_RETURN_HOME		 0x02
#define _CHARACTER_ENTERY_MODE   0x06
#define  _LCD_CURSOR_OFF 
#define  _LCD_UNDERLINE_ON	     0x0F
#define  _LCD_MOVE_CURSOR_LEFT   0x10
#define  _LCD_MOVE_CURSOR_RIGHT  0x14
#define  _LCD_TURN_OFF			 0x09
#define  _LCD_TURN_ON			 0x0D
#define _LCD_FIRST_address		 0x80
#define _LCD_BLINK_CURSOR_OFF	 0x0C

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
//                                         (                        PORTx           ,               PINx                     )
#define EN_PORT_PIN(STCT_NAME)             ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[0],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[1]
#define RS_PORT_PIN(STCT_NAME)             ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[2],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[3]
#define RW_PORT_PIN(STCT_NAME)             ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[4],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[5]
#if LCD_Mode == _8_WIRE_MODE 
	#define _8_D0_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[6],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[7]
	#define _8_D1_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[8],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[9]
	#define _8_D2_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[10],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[11]
	#define _8_D3_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[12],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[13]
	#define _8_D4_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[14],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[15]
	#define _8_D5_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[16],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[17]
	#define _8_D6_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[18],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[19]
	#define _8_D7_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[20],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[21]
#elif LCD_Mode == _4_WIRE_MODE 
	#define _4_D4_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[6],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[7]
	#define _4_D5_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[8],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[9]
	#define _4_D6_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[10],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[11]
	#define _4_D7_PORT_PIN(STCT_NAME)          ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[12],ACCESS_STRUCT(STCT_NAME,LCD_PortPins)[13]
#endif



#define LCD_N(STCT_NAME)       ( (ACCESS_STRUCT(STCT_NAME,LCD_SIZE_Rows) == 1) ?  (0) : (1) )
/*   For 5x7 Dots    */ 
#define LCD_F(STCT_NAME)                    0 
// For Display On/Off 
#define LCD_D(STCT_NAME)                    1
// For Cursor On/Off             
#define LCD_C(STCT_NAME)                    1
// Crusor Blink On/Off      
#define LCD_B(STCT_NAME)                    1

// Increment Mode by 1   
#define LCD_I_D(STCT_NAME)                  1      
#define LCD_SH(STCT_NAME)                   0     



/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static u8 Init_Mode = 1 ; 



/******************************************************************************
* Function Prototypes
*******************************************************************************/
static void LCD_voidWriteCmd(LCD_Config* x , u8 copy_u8Cmd); 
static void LCD_delay_us(u16 d)
{
	LCD_delay_us(d); 
}


/******************************************************************************
* Function Definitions
*******************************************************************************/


void LCD_voidInit(LCD_Config* ptr_cfg)
{
    Init_Mode = 1 ;
	u8 LOC_u8Cmd = 0 ; 

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
        // Wait for more than 30ms after VDD rises to 4.5V.
        _delay_ms(30); 
        //  Send 0b0011NFXX
        LOC_u8Cmd = 0 ; 
        LOC_u8Cmd = 0b00110000 ; 
        LOC_u8Cmd |= ( LCD_N(ptr_cfg) << 3 ) | (LCD_F(ptr_cfg) <<2); 
        LCD_voidWriteCmd(ptr_cfg,LOC_u8Cmd) ; 
        // Wait 35 us
        LCD_delay_us(50); 
        // Send 0b00001DCB  --> Display ON/OFF Control
        LOC_u8Cmd = 0b00001000 ;
        LOC_u8Cmd |= (LCD_D(ptr_cfg) <<2) | (LCD_C(ptr_cfg) <<1)| (LCD_B(ptr_cfg)<< 0) ; 
        LCD_voidWriteCmd(ptr_cfg,LOC_u8Cmd) ; 
        // Wait 35 us
        LCD_delay_us(50); 
        // Send 0b00000001 --> Display Clear
        LOC_u8Cmd = 0b00000001 ;
        LCD_voidWriteCmd(ptr_cfg,LOC_u8Cmd) ; 
        // Wait for more than 1.53ms
        _delay_ms(2);
        // Send 0b000001I/DSH --> Entry Mode Set 
        LOC_u8Cmd = 0b00000100 ;
        LOC_u8Cmd |= (LCD_I_D(ptr_cfg) <<1)| (LCD_SH(ptr_cfg)<< 0) ; 
        LCD_voidWriteCmd(ptr_cfg,LOC_u8Cmd) ; 
 
        /********************************** END OF INITILIZATION *****************************************************/      
	#elif LCD_Mode == _4_WIRE_MODE
        // Init D4 --> D7 
        GPIO_voidSetPinDirection(_4_D4_PORT_PIN(ptr_cfg),OUTPUT);  //DB4
        GPIO_voidSetPinDirection(_4_D5_PORT_PIN(ptr_cfg),OUTPUT);  //DB5
        GPIO_voidSetPinDirection(_4_D6_PORT_PIN(ptr_cfg),OUTPUT);  //DB6
        GPIO_voidSetPinDirection(_4_D7_PORT_PIN(ptr_cfg),OUTPUT);  //DB7
		// cONTROLPins		
		GPIO_voidSetPinDirection(EN_PORT_PIN(ptr_cfg),OUTPUT); 
		GPIO_voidSetPinDirection(RS_PORT_PIN(ptr_cfg),OUTPUT); 
		GPIO_voidSetPinDirection(RW_PORT_PIN(ptr_cfg),OUTPUT); 
        // Wait for more than 30ms after VDD rises to 4.5V.
        _delay_ms(30); 
        //  Send 0b0010 0000 , 0b0010 0000 , 0bNF X X 0000

        LCD_voidWriteCmd(ptr_cfg,0x33) ;
        LCD_voidWriteCmd(ptr_cfg,0x32) ;
        LCD_voidWriteCmd(ptr_cfg,0x28) ;
        LCD_voidWriteCmd(ptr_cfg,0x0e) ;
        LCD_voidWriteCmd(ptr_cfg,0x01) ;
        LCD_delay_us(2000); 
        LCD_voidWriteCmd(ptr_cfg,0x06) ;
 
        /********************************** END OF INITILIZATION *****************************************************/    
	#endif
	_delay_ms(2);
    Init_Mode = 0 ;
}
void LCD_voidSendChar(LCD_Config* ptrCnfg , u8 copy_u8data)
{
    /* 
    *    Enter Data Mode
    *               RS = 1 
    *               RW = 0 
    */

#if LCD_Mode == _8_WIRE_MODE 
        GPIO_voidSetPinValue(_8_D0_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,0));  //DB0
        GPIO_voidSetPinValue(_8_D1_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,1));  //DB1
        GPIO_voidSetPinValue(_8_D2_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,2));  //DB2
        GPIO_voidSetPinValue(_8_D3_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,3));  //DB3
        GPIO_voidSetPinValue(_8_D4_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,4));  //DB4
        GPIO_voidSetPinValue(_8_D5_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,5));  //DB5
        GPIO_voidSetPinValue(_8_D6_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,6));  //DB6
        GPIO_voidSetPinValue(_8_D7_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,7));  //DB7 
		// Write Data To LCD
        WRITE_DATA_TO_LCD(ptrCnfg);    
#elif LCD_Mode == _4_WIRE_MODE
        //  Send Upper Bits
        GPIO_voidSetPinValue(_4_D4_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,4));  //DB4
        GPIO_voidSetPinValue(_4_D5_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,5));  //DB5
        GPIO_voidSetPinValue(_4_D6_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,6));  //DB6
        GPIO_voidSetPinValue(_4_D7_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,7));  //DB7
		GPIO_voidSetPinValue(RS_PORT_PIN(ptrCnfg) , HIGH) ; //RS
		GPIO_voidSetPinValue(RW_PORT_PIN(ptrCnfg) , LOW) ;	//RW
        // Write Data To LCD
        WRITE_DATA_TO_LCD(ptrCnfg); 
        //  Send Lower Bits
        GPIO_voidSetPinValue(_4_D4_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,0));  //DB0
        GPIO_voidSetPinValue(_4_D5_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,1));  //DB1
        GPIO_voidSetPinValue(_4_D6_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,2));  //DB2
        GPIO_voidSetPinValue(_4_D7_PORT_PIN(ptrCnfg),GET_BIT(copy_u8data,3));  //DB3
        // Write Data To LCD
        WRITE_DATA_TO_LCD(ptrCnfg); 
		LCD_delay_us(100);
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
	
	u8 index =0 ; 
	u8 line0 = 0 ; 
	LCD_voidGotoXY(ptrCnfg,x,y);
	while(ptr_u8data[index] != '\0' && (y*ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols))+(index+x) < (2*ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols)))
	{
		if((y*ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols))+(index+x) < (ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols)))
		{
			LCD_voidSendChar(ptrCnfg,ptr_u8data[index]);
			index++;
		}
		else if((y*ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols))+(index+x) == (ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols)) && line0 == 0)
		{
			LCD_voidGotoXY(ptrCnfg,0,1); 
			line0++;
		}
		else if((y*ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols))+(index+x) < (2* ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols)) && line0 == 1)
		{
			LCD_voidSendChar(ptrCnfg,ptr_u8data[index]);
			index++;
			
		}

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
	//if( y < ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Rows) && x < ACCESS_STRUCT(ptrCnfg,LCD_SIZE_Cols) )
	//{
		 /* Using Set DDRAM Address cmd 
		 *	RS 0
		 *  RW 0
		 *  D7 1
		 * ADD
		 */
		
	//	 address = y * 0x40 ;		/*	If 0 --> Row 1 , If 0x40 Row 2	*/
	//	 address = address+ x ;		/* To Goto x position	*/
		u8 chrAdd[] = {0x80,0xC0,0x94,0xD4} ;
		LCD_voidWriteCmd(ptrCnfg , chrAdd[y-1]+x-1);
		LCD_delay_us(100);

		
	//}
}
void LCD_voidClear(LCD_Config* x)
{
	LCD_voidWriteCmd(x,0x01);
	_delay_ms(10);
	LCD_voidWriteCmd(x,0x80);
	
	
}
/************************************ Static FCNs**********************************/
void LCD_voidWriteCmd(LCD_Config* x , u8 copy_u8Cmd)
{
    /* 
    *    Enter CMD Mode
    *               RS = 0 
    *               RW = 0 
    */
    // < rsPort,rsPin, rwPort, rwPin,d1Port,d1Pin ....... d7Port,d7Pin> for _8_WIRE_MODE

	WRITE_DATA_TO_LCD(x); 
#if LCD_Mode == _8_WIRE_MODE 

#elif LCD_Mode == _4_WIRE_MODE
        GPIO_voidSetPinValue(_4_D4_PORT_PIN(x),GET_BIT(copy_u8Cmd,4));  //DB4
        GPIO_voidSetPinValue(_4_D5_PORT_PIN(x),GET_BIT(copy_u8Cmd,5));  //DB5
        GPIO_voidSetPinValue(_4_D6_PORT_PIN(x),GET_BIT(copy_u8Cmd,6));  //DB6
        GPIO_voidSetPinValue(_4_D7_PORT_PIN(x),GET_BIT(copy_u8Cmd,7));  //DB7
		GPIO_voidSetPinValue(RS_PORT_PIN(x) , LOW) ;  //RS
		GPIO_voidSetPinValue(RW_PORT_PIN(x) , LOW) ;	// RW
		WRITE_DATA_TO_LCD(x);
		LCD_delay_us(100);
		GPIO_voidSetPinValue(_4_D4_PORT_PIN(x),GET_BIT(copy_u8Cmd,0));  //DB0
		GPIO_voidSetPinValue(_4_D5_PORT_PIN(x),GET_BIT(copy_u8Cmd,1));  //DB1
		GPIO_voidSetPinValue(_4_D6_PORT_PIN(x),GET_BIT(copy_u8Cmd,2));  //DB2
		GPIO_voidSetPinValue(_4_D7_PORT_PIN(x),GET_BIT(copy_u8Cmd,3));  //DB3
		WRITE_DATA_TO_LCD(x);
		LCD_delay_us(100);
		
		

#endif
}

/************************************* End of File ******************************************/