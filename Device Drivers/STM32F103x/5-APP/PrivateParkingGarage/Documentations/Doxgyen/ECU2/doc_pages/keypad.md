@page Keypad Keypad Driver 
@tableofcontents

OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT

## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return |Note|
| ------ | ------ |  ------ |  ------ |------ |
| HAL_KeyPadInit(KeyPad_cnfg*)  | Initialize Keypad|`KeyPad_cnfg* ptr_config` pointer to <a href="#_Keypad_Config">Keypad_Config</a>|`void`| |
| HAL_KeyPadGetPressedKey(KeyPad_cnfg*)  | Get Pressed Key |`KeyPad_cnfg* ptr_config` pointer to <a href="#_Keypad_Config">Keypad_Config</a>|`void`| if key not pressed it will return value in macro named `KEYPAD_NOT_PRESSED_RETURN` |





### _Keypad_Config
```c

typedef struct 
{
    u8                  NumOfRows                ;          // Number of Rows in KeyPad - Configured as Output
    u8                  NumOfCols                ;          // Number of Columns in KeyPad - Configured as Input-PullUp
    u8                  *Port_Pin_Rows           ;          // Pointer to 1D Array Hold Rows Ports/Pins - like u8 arr[] = {PORTA,PIN0,PORTB,PIN1,....}
    u8                  *Port_Pin_Cols           ;          // Pointer to 1D Array Hold Columns Ports/Pins - like u8 arr[] = {PORTA,PIN0,PORTB,PIN1,....}
    u8                  *KeysPattern             ;          // Pointer to 2D Array Hold Patterns on KeyPad and pass it using keyword newKeyMap(arrName)
}KeyPad_cnfg; 

```


### In the case of a Keypad not being pressed 
> Add your Custom value on it
```c
#define KEYPAD_NOT_PRESSED_RETURN       200
```


### Full Example  
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=1JK_UvN2h2fMgHPbX6tRREqsMlyvax-ae)
```c

#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "_7Segment.h"
#include "KeyPad.h"

#define ROWS	4
#define COLS	3
	u8 data ;
void main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	RCC_voidEnableClock(RCC_APB2, PORTB);


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
	HAL_7SegmentWriteNumber(&mySegment,0);

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
		PORTB,PIN0,
		PORTB,PIN1,
		PORTB,PIN2,
		PORTB,PIN3
	};
	u8 ColsPins[] =
	{
		PORTB,PIN4,
		PORTB,PIN5,
		PORTB,PIN6
	};
	/*	Keypad Init		*/
	KeyPad_cnfg myKeypad;
	myKeypad.NumOfRows = ROWS ;	// Output
	myKeypad.NumOfCols = COLS ;	//Input
	myKeypad.Port_Pin_Rows = RowsPins ;
	myKeypad.Port_Pin_Cols = ColsPins ;
	myKeypad.KeysPattern = newKeyMap(keys) ;
	HAL_KeyPadInit(&myKeypad);
	while(1){

	    data = HAL_KeyPadGetPressedKey(&myKeypad);
		HAL_7SegmentWriteNumber(&mySegment,data);


	}

}

```



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

