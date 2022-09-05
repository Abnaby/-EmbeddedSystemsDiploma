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
#include <util/delay.h>
int main (void)
{
	_7Segment_Config mySegment,mySegment2,mySegment3 ; 
	
	
	/************** Set 7 Segment Type ***********************/
	mySegment._7SegmentType = COMN_CATHOD ; 
	/************** Set 7 Segment Mode ***********************/
	mySegment._7SegmentMode = _7_SEG_NORMAL_MODE ;
	/************** Set 7 Segment Pins ***********************/
	mySegment._7SegmentPins._7SEG_A_PORT = PORTA ;
	mySegment._7SegmentPins._7SEG_A_PIN  =  PIN0 ;
	mySegment._7SegmentPins._7SEG_B_PORT = PORTA ; 
	mySegment._7SegmentPins._7SEG_B_PIN  =  PIN1  ;
	mySegment._7SegmentPins._7SEG_C_PORT = PORTA ; 
	mySegment._7SegmentPins._7SEG_C_PIN  =  PIN2  ;
	mySegment._7SegmentPins._7SEG_D_PORT = PORTA ; 
	mySegment._7SegmentPins._7SEG_D_PIN =  PIN3  ;	
	mySegment._7SegmentPins._7SEG_E_PORT = PORTA ; 
	mySegment._7SegmentPins._7SEG_E_PIN =  PIN4  ;
	mySegment._7SegmentPins._7SEG_F_PORT = PORTA ; 
	mySegment._7SegmentPins._7SEG_F_PIN =  PIN5  ;
	mySegment._7SegmentPins._7SEG_G_PORT = PORTA  ;
	mySegment._7SegmentPins._7SEG_G_PIN =  PIN6  ;


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
	
	
	/************** Set 7 Segment3 Type ***********************/
	mySegment3._7SegmentType = COMN_ANODE ; 
	/************** Set 7 Segment2 Mode ***********************/
	mySegment3._7SegmentMode = _7_SEG_NORMAL_MODE ;
	/************** Set 7 Segment2 Pins ***********************/
	mySegment3._7SegmentPins._7SEG_A_PORT = PORTB ;
	mySegment3._7SegmentPins._7SEG_A_PIN  = PIN0 ;
	mySegment3._7SegmentPins._7SEG_B_PORT = PORTB ; 
	mySegment3._7SegmentPins._7SEG_B_PIN  = PIN1  ;
	mySegment3._7SegmentPins._7SEG_C_PORT = PORTB ; 
	mySegment3._7SegmentPins._7SEG_C_PIN  = PIN2  ;
	mySegment3._7SegmentPins._7SEG_D_PORT = PORTB ; 
	mySegment3._7SegmentPins._7SEG_D_PIN  = PIN3  ;	
	mySegment3._7SegmentPins._7SEG_E_PORT = PORTB ; 
	mySegment3._7SegmentPins._7SEG_E_PIN  = PIN4  ;	
	mySegment3._7SegmentPins._7SEG_F_PORT = PORTB ; 
	mySegment3._7SegmentPins._7SEG_F_PIN  = PIN5  ;	
	mySegment3._7SegmentPins._7SEG_G_PORT = PORTB ; 
	mySegment3._7SegmentPins._7SEG_G_PIN  = PIN6  ;		
	/************** Set 7 Segment Init ***********************/
	HAL_7SegmentInit(&mySegment);
	HAL_7SegmentInit(&mySegment2);
	HAL_7SegmentInit(&mySegment3);
	

	while(1)
	{
		for (int i = 0 ; i <= 9 ; i++)
		{
		HAL_7SegmentWriteNumber(&mySegment,i);
		HAL_7SegmentWriteNumber(&mySegment2,i);
		HAL_7SegmentWriteNumber(&mySegment3,i);
		
		_delay_ms(800);
			
		}


	
	}

}

