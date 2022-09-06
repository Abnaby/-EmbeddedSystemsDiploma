/**
 * @file main.c
 * @author Mohamed Abd El-Naby (mahameda.naby#gmail.com)
 * @brief this file contain the main code of application
 * @version 0.1
 * @date 2022-08-18
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "_7Segment.h"
#include "KeyPad.h"

#include <util/delay.h>
#define ROWS	4
#define COLS	3
/*		7 Seg	*/
void display(u8 i)
{
	_7Segment_Config mySegment2 ; 
	/************** Set 7 Segment2 Type ***********************/
	mySegment2._7SegmentType = COMN_ANODE ; 
	/************** Set 7 Segment2 Mode ***********************/
	mySegment2._7SegmentMode = _7_SEG_4_PIN_IC ;
	/************** Set 7 Segment2 Pins ***********************/
	mySegment2._7SegmentPins._7SEG_A_PORT = PORTD ;
	mySegment2._7SegmentPins._7SEG_A_PIN  = PIN0 ;
	mySegment2._7SegmentPins._7SEG_B_PORT = PORTD ; 
	mySegment2._7SegmentPins._7SEG_B_PIN  = PIN1  ;
	mySegment2._7SegmentPins._7SEG_C_PORT = PORTD ; 
	mySegment2._7SegmentPins._7SEG_C_PIN  = PIN2  ;
	mySegment2._7SegmentPins._7SEG_D_PORT = PORTD ; 
	mySegment2._7SegmentPins._7SEG_D_PIN  = PIN3  ;
	HAL_7SegmentInit(&mySegment2);	
	HAL_7SegmentWriteNumber(&mySegment2,i);
}
//#include <avr/io.h>
int main (void)
{
	/*		Key Patterns	*/
	char keys[ROWS][COLS] = 
	{
	  {'1','2','3'},
	  {'4','5','6'},
	  {'7','8','9'},
	  {'*','0','#'}
	};
	/*		Key GPIOs		*/
	u8 RowsPins[] =
	{
		PORTA,PIN0, 
		PORTA,PIN1,
		PORTA,PIN2,
		PORTA,PIN3
	}; 
	u8 ColsPins[] = 
	{
		PORTA,PIN4, 
		PORTA,PIN5,
		PORTA,PIN6	
	};
	/*	Keypad Init		*/
	KeyPad_cnfg myKeypad; 
	myKeypad.NumOfRows = ROWS ;	// Output
	myKeypad.NumOfCols = COLS ;	//Input
	myKeypad.Port_Pin_Rows = RowsPins ;
	myKeypad.Port_Pin_Cols = ColsPins ;
	myKeypad.KeysPattern = newKeyMap(keys) ;
	HAL_KeyPadInit(&myKeypad);
	u8 data = '5' ;	
	
	while(1)
	{
		data = HAL_KeyPadGetPressedKey(&myKeypad); 
		display(data);
		_delay_ms(100); 
	}

}

