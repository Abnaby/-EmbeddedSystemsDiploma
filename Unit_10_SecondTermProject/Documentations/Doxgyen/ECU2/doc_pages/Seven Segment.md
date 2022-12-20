@page sevenSegment Sevent Segment Driver

OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT

## Note 
1- Don't Forget to Enable Clock in Port Will Used
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
Display numbers from 0 to 9 in Common Anode
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=1KH3OQvJgkAma4UVYaBEI1etr7IwyGXa_)
```c

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
```
> Result
![image](https://drive.google.com/uc?export=download&id=1elrOnMFZ8Vd2DSMidPxpKlYoZdgk0mEm)

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

