@page LCD LCD Driver 
@tableofcontents

## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return |Note|
| ------ | ------ |  ------ |  ------ |------ |
| LCD_voidInit(LCD_Config*)  | Initialize LCD|`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a>|`void`| |
| LCD_voidSendChar(LCD_Config* ,u8)  | This Function Used to print char on screen |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/> `u8 copy_u8data` Data to be displayed |`void`| |
| LCD_voidSendString(LCD_Config* ,u8*)  | This Function Used to print char on screen |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/> `u8* copy_u8data` Pointer to string to be displayed |`void`|add `addString("Your Text")` before pass string|
| LCD_voidSendStringAt(LCD_Config* ,u8* , u8 , u8)  | this function used to display string at X,Y position |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/> `u8* copy_u8data` Pointer to string to be displayed <br/> `u8 x` position of columns <br/> `u8 y` position of row |`void`| add `addString("Your Text")` before pass string |
| LCD_voidGotoXY(LCD_Config* , u8 , u8)  | This function used to go to in specific row and column  |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/>`u8 x` position of columns <br/> `u8 y` position of row |`void`| |
| LCD_voidClear(LCD_Config*)  | This Function Used to clear screen and goto home  |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a>|`void`| |
| LCD_voidSetCursorType(LCD_Config*,cursorType)  | This Function Used to select cursor type   |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/> `cursorType copy_cursorType` select from  <a href="#_LCD_Cursor">available types</a>|`void`| |
| LCD_voidSetDisplayState(LCD_Config*,u8)  | This Function Used to Select Display State |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/> `u8 displayState` select from  <a href="#_LCD_Disply">available options</a>|`void`| |
| LCD_voidStoreCustomChar(LCD_Config*,u8*,u8)  | This function used to store custom char in CGRAM before display it  |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/> `u8* ptrToArray` pointer to custom 1D array represents custom char  <br/> `u8 copy_u8CharIndex` he index of char 0->7  |`void`| |
| LCD_voidDispCustomChar(LCD_Config*,u8)  | This function used to display custom char  |`LCD_Config* ptr_config` pointer to <a href="#_LCD_Config">LCD_Config</a> <br/> `u8 storedCharIndex` he index of char 0->7   |`void`| every custom char must be sotrd first using `LCD_voidStoreCustomChar(LCD_Config*  ptrLCD ,u8* ptrToArray, u8 copy_u8CharIndex);` |


### _LCD_Config
```c

typedef struct
{
    u8                  LCD_SIZE_Rows    ;      // Inset Number of Rows in your LCD
                                                // Option 1 or 2 
    u8                  LCD_SIZE_Cols    ;      // Insert Number of Columns in your LCD
    u8                  *LCD_PortPins    ;      // Pointer to 1D Array that holds 
                                                // < Enable,rsPort,d1Port,d1Pin ....... d7Port,d7Pin> for _8_WIRE_MODE
                                                // < Enable,rsPort, rwPin,d4Port,d4Pin ....... d7Port,d7Pin> for _4_WIRE_MODE
}LCD_Config;

```
### _LCD_Disply
| Parameter Type | Usage |
| ------ | ------ | 
|DISP_OFF | Used to turn off screen |
|DISP_ON  | Used to turn on screen |

### _LCD_Cursor
```c
typedef enum
{
	CURS_OFF = 0x0C		,
	CURS_ON	 = 0x0E		,
	CURS_ON_BLINK = 0x0F				
}cursorType; 
```

### Precompiled parameters
> Selcet between _4_WIRE_MODE , _8_WIRE_MODE
```c
#define LCD_Mode	_4_WIRE_MODE
```


### Full Example  
4-bit Mode
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=1AQvOrDcYWSmRIPObSBBVheG-tfoCBMT4)
```h
/* In LCD.h File	*/
#define LCD_Mode	_4_WIRE_MODE
```
```c

#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "LCD.h"

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}


u8 arr[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin>
	//EN
	PORTA , PIN0 ,
	//RS
	PORTA , PIN1 ,
	//D4
	PORTA , PIN2 ,
	//D5
	PORTA , PIN3 ,
	//D6
	PORTA , PIN4 ,
	//D7
	PORTA , PIN5
};

u8 LCD_ProgrssBarChar[] = {
		  0x1F,
		  0x11,
		  0x11,
		  0x11,
		  0x11,
		  0x11,
		  0x1F,
		  0x1F
};
void progressBar(LCD_Config *myLCD, u8 prcentage, u16 delayOfBar)
{

	LCD_voidStoreCustomChar(myLCD ,LCD_ProgrssBarChar , 0);
	LCD_voidGotoXY(myLCD,0,1);
	prcentage = (u8)((prcentage * 16 )/100) ;
	for(int i = 0 ; i < prcentage ; i++)
	{
		LCD_voidSendChar(myLCD,0);
		xDelay(delayOfBar);
	}

}
void main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	/*			init lcd			*/
	LCD_Config myLCD ;
	myLCD.LCD_SIZE_Rows = 2 ;
	myLCD.LCD_SIZE_Cols = 16 ;
	myLCD.LCD_PortPins = arr ;
	LCD_voidInit(&myLCD);
	LCD_voidSendString(&myLCD,addString("HI Abnaby Wait"));
	progressBar(&myLCD,100,500);
	while(1){



	}

}
```

> Result
![image](https://drive.google.com/uc?export=download&id=1nxlu3R3GB_qIXCBXkQIDPFg3xq0q5KxG)




## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

