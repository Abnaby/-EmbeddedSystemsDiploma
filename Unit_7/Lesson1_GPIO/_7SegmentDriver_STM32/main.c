
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "_7Segment.h"

void main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	/*			7SEG				*/
	_7Segment_Config mySegment ;
	/************** Set 7 Segment Type ***********************/
	mySegment._7SegmentType = COMN_ANODE ;
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
	/************** Set 7 Segment Init ***********************/
	HAL_7SegmentInit(&mySegment);
	while(1){
		for (int i = 0 ; i <= 9 ; i++)
		{
			HAL_7SegmentWriteNumber(&mySegment,i);

			for(u32 i = 0 ; i <= 2000 ; i++)
				for(u32 J = 0 ; J <= 500 ; J++);

		}

	}

}
