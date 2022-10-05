# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT

 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
| WDT_voidStart(WDT_timeOut*)  |This Function Used to Start counter of Watchdog Timer |`WDT_timeOut selectPredefinedTimeOut` - select from <a href="## WDT_TIMEOUT"> @ref WDT_timeOut </a> | void || 
| WDT_voidStop(void) | This Function Used to Stop Watchdog Timer. |`void`  |void | |
## WDT_TIMEOUT
```c
typedef enum
{
    WDT_TIM_OUT_16P3_MS = 0b000 ,
    WDT_TIM_OUT_32P5_MS = 0b001 ,
    WDT_TIM_OUT_65P0_MS = 0b010 ,
    WDT_TIM_OUT_0P13_MS = 0b011 ,
    WDT_TIM_OUT_0P26_MS = 0b100 ,
    WDT_TIM_OUT_0P52_MS = 0b101 ,
    WDT_TIM_OUT_1P0_SEC = 0b110 ,
    WDT_TIM_OUT_2P1_SEC = 0b111
}WDT_timeOut; 

```
| param | Time |
| ------ | ------ | 
|WDT_TIM_OUT_16P3_MS| 16.3  MSec|
|WDT_TIM_OUT_32P5_MS| 32.5 MSec|
|WDT_TIM_OUT_65P0_MS|65.0 MSec|
|WDT_TIM_OUT_0P13_MS|0.13 MSec|
|WDT_TIM_OUT_0P52_MS|0.52 MSec|
|WDT_TIM_OUT_0P26_MS|0.26 MSec|
|WDT_TIM_OUT_1P0_SEC|1 Sec|
|WDT_TIM_OUT_2P1_SEC|2.1 Sec|


# Full Example  
```c


#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "WDT_Interface.h"
#include <util/delay.h>
int main(void)
{
	GPIO_voidInit();
	GPIO_voidSetPinDirection(PORTC, PIN0, OUTPUT);
	// Set Pin To High 
	GPIO_voidSetPinValue(PORTC, PIN0, HIGH); 
	_delay_ms(500);
	while(1)
	{
		// START WDT 
		WDT_voidStart(WDT_TIM_OUT_1P0_SEC); 
		GPIO_voidTogglePin(PORTC,PIN0); 
	   _delay_ms(2000);
	   WDT_voidStop();	
	}
	return 0;
}
```
Simulation Logs
![image](https://drive.google.com/uc?export=download&id=1CvJPclcVaYK1TflTQA5v3NGpbxsbiF2m)



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
