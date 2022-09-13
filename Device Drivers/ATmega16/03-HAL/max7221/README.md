## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT
## Notes
	- This Version Suitable for Common Cathode Displays Only


## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return |Note|
| ------ | ------ |  ------ |  ------ |------ |
| MAX7221_Init(MAX7221_Config *)  | Initialize  MAX7221 |`MAX7221_Config *ptr_customConfig` pointer to <a href="#_MAX7221_Config">Max7221_Config</a>|`void`| |
| MAX7221_SendData(u8,u8)  | Send Data to MAX7221 |`u8 copy_u8data` data to be displayed <br/> `u8 copy_u8DispNumber` disp data on segment number 0 --> 7 |`void`| |
| MAX7221_DispState(MAX7221_Disp_State)  | Set Display State |`MAX7221_Disp_State copy_state` Select from enum named <a href="#_MAX7221_Disp_State"> MAX7221_Disp_State</a> |`void`| |
| MAX7221_Disp_Intensity(u8)  | This Function Set Intensity of Display |`u8 copy_u8Brightness` Select from enum namedIntensity Level 0-->15|`void`| |








### _MAX7221_Config
```c
typedef struct
{
	MAX7221_Disp_Size selecrDispSize ; // Select from @ref MAX7221_Disp_Size 
}MAX7221_Config;

```
### _MAX7221_Disp_Size
```c

typedef enum
{
	DISP_ONE_ONLY			    , 
	DISP_FROM_0_T_1				,
	DISP_FROM_0_T_2				,
	DISP_FROM_0_T_3				,
	DISP_FROM_0_T_4				,
	DISP_FROM_0_T_5				,
	DISP_FROM_0_T_6				,
	DISP_FROM_0_T_7				
}MAX7221_Disp_Size ;
```
### _MAX7221_Disp_State
```c
typedef enum
{
    MAX7221_OFF,
    MAX7221_ON 

}MAX7221_Disp_State ;
```

### Full Example  
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=12A-stAiP13j7wmUAdGfRW4sIfRXYHyKe)
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "max7221.h"

#include <util/delay.h>
int main(void)
{
	MAX7221_Config myDisp =  {MAX7221_DIG_0_7} ; 
	MAX7221_Init(&myDisp);  
	
	while(1)
	{
		for(int i = 0 ; i <= 7 ; i++)
		{
				MAX7221_SendData(i,i);
				_delay_ms(100); 
		}
		
	}
	return 0;
}
```
> Result
![image](https://drive.google.com/uc?export=download&id=1VnD4ewCOGsOWh2RfhnqH2J1aoRs-PjEh)



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

