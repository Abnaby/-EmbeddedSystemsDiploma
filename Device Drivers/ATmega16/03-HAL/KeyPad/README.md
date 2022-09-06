## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


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
4x3 Keypad with 7segment display
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=1WieKN6lzhM08tLEJCQ5hxK04rSSWHE0Z)
```c
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

```
> Result
![image](https://drive.google.com/uc?export=download&id=1w2uKt1u1DzxXH_IBrsdZ0jdf5TTZOzgm)

4x4 Keypad with USART
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=1ChpMEMXg-zTMIMOhuXU1VjOBWbJ0i83z)
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "USART_Interface.h"
#include "KeyPad.h"

#define ROWS	4
#define COLS	4
int main (void)
{
	/*		Key Patterns	*/
	char keys[ROWS][COLS] = 
	{
	  {'7','8','9','/'},
	  {'4','5','6','X'},
	  {'1','2','3','-'},
	  {'C','0','=','+'}
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
		PORTA,PIN6,
		PORTA,PIN7
	};
	/*	Keypad Init		*/
	KeyPad_cnfg myKeypad; 
	myKeypad.NumOfRows = ROWS ;	// Output
	myKeypad.NumOfCols = COLS ;	//Input
	myKeypad.Port_Pin_Rows = RowsPins ;
	myKeypad.Port_Pin_Cols = ColsPins ;
	myKeypad.KeysPattern = newKeyMap(keys) ;
	HAL_KeyPadInit(&myKeypad);
	/*	Init USART		*/
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER  ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);
	u8 data ; 
	//MCAL_USART_SendString("Hello From The Other Side :) ") ; 
	while(1)
	{
		data = HAL_KeyPadGetPressedKey(&myKeypad); 
		if(data != 200)
		{
		MCAL_USART_TxByteSynch(data);
		MCAL_USART_TxByteSynch('\r');
		MCAL_USART_TxByteSynch('\n');
		
		}
	}

}

```
> Result
![image](https://drive.google.com/uc?export=download&id=133_tjJQoxZNKT3fDR6i86X25gHNihdXO)


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

