## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT

## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return |
| ------ | ------ |  ------ |  ------ |
| HAL_7SegmentInit(_7Segment_Config*)  | Initialize 7-Segment Display|`_7Segment_Config* ptr_config` pointer to <a href="#_7Segment_Config">_7Segment_Config</a>|`_7Segment_ReturnState` return value for <a href="#_7Segment_States">_7Segment_States</a>|
| HAL_7SegmentWriteNumber(_7Segment_Config*,u8)  | Display Number from 0 to 9|`_7Segment_Config* ptr_config` pointer to <a href="#_7Segment_Config">_7Segment_Config</a> `u8 copy_u8Number` number from 0 to 9|`_7Segment_ReturnState` return value for <a href="#_7Segment_States">_7Segment_States</a>|



### _7Segment_Config
```c

typedef struct
{
    _7Segment_Type              _7SegmentType    ;          // see @ref  _7Segment_Type
    _7Segment_OperationMode     _7SegmentMode    ;          // see @ref  _7Segment_OperationMode
    _7Segment_Pins              _7SegmentPins    ;          // see @ref  _7Segment_Pins
}_7Segment_Config;
```


### _7Segment_States
```c
typedef enum
{
    NO_ERROR                        ,           // No Error
	ERROR_OPRTION_MODE_SLCTION		,           // Error Due to Wrong Mode Selection
	ERROR_TYPE_SLCTION		                    // Error Due To Wrong Type Selection
}_7Segment_ReturnState ;
```
### _7Segment_Type
```c
// !!!! Don't Edit aany value !!!!
typedef enum
{
	
    COMN_ANODE     = LOW ,
    COMN_CATHOD    = HIGH

}_7Segment_Type ; 
```
### _7Segment_OperationMode
```c
// !!!! Don't Edit aany value !!!!
typedef enum
{
    _7_SEG_NORMAL_MODE  ,
    _7_SEG_4_PIN_IC

}_7Segment_OperationMode ;
```

### _7Segment_Pins
```c
// !!!! Don't Edit aany value !!!!
typedef enum
{
    _7_SEG_NORMAL_MODE  ,
    _7_SEG_4_PIN_IC

}_7Segment_OperationMode ;

/**
 * @brief This enum has the available options for modes of seven segment  
 * 
 * @note in case of using _7_SEG_4_PIN_IC Mode from @ref _7Segment_OperationMode 
 *       We Use only _7SEG_A_x to _7SEG_D_x only and the rest of macros will be ignored 
 */
typedef struct
{
   u8 _7SEG_A_PORT    ;
   u8 _7SEG_A_PIN     ;
   u8 _7SEG_B_PORT    ;
   u8 _7SEG_B_PIN     ;
   u8 _7SEG_C_PORT    ;
   u8 _7SEG_C_PIN     ;
   u8 _7SEG_D_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_D_PIN     ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_E_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_E_PIN     ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_F_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_F_PIN     ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_G_PORT    ;           // Will Ignored of Mode = _7_SEG_4_PIN_IC
   u8 _7SEG_G_PIN	  ;		// Will Ignored of Mode = _7_SEG_4_PIN_IC
}_7Segment_Pins;
```
### Full Example  
Display numbers from 0 to 9 in 3 Modes Common AnodeC, ommon Cathode, and BCD 4-Wire Mode
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=1LyIVNVMq1KOekOIdaR1ttautaY2crtAy)
```c
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
```
> Result
![image](https://drive.google.com/uc?export=download&id=1FuqzS0j7c_pF3n8bPlZHwlScJPTAtwJu)

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

