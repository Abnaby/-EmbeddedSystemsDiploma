# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT


## Notes
	- Must Enable Optimization level 3
	- When the EEPROM is read, the CPU is halted for four clock cycles before the next instruction is executed.
	- When the EEPROM is written, the CPU is halted for two clock cycles before the next instruction is executed
	- This Version for ATmega16 only
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
| intEPPROM_Init(void)  | Internal EEPROM Initilalization. |`void` |`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_ReadByte(u16, u8*)  | Read one byte from EEPROM address. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u8 *copy_u8Data` pointer to received data from EEPROM |`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_ReadWord(u16, u16*)  | Read two byte from EEPROM address. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u16 *copy_u16Data` pointer to received data from EEPROM |`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_ReadDword(u16, u32*)  | Read four byte from EEPROM address. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u32 *copy_u32Data` pointer to received data from EEPROM |`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_ReadBlock(u16, u16, u8*)  | Read Number of Bytes from EEPROM. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u16 copyNumberOfByte` number of byte to read it. <br/> `u8 *ptr_u8Data` pointer to 1D Array holds bytes of data |`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_WriteByte(u16, u8)  | Write one byte in EEPROM address. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u8 copy_u8Data` ta will store in EEPROM|`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_WriteWord(u16, u16)  | Write two byte in EEPROM address. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u16 copy_u16Data` ta will store in EEPROM|`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_WriteDword(u16, u32)  | Write four byte in EEPROM address. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u32 copy_u32Data` ta will store in EEPROM|`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 
| intEPPROM_WriteBlock(u16, u16, u8*)  | Write Number of Bytes to EEPROM. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u16 copyNumberOfByte` number of byte to read it. <br/> `u8 *ptr_u8Data` pointer to 1D Array holds bytes of data |`EEPROM_errorState` <a href="##_EEPROM_errorState">enum of errors and states</a>  can be returned ||
| intEPPROM_UpdateByte(u16, u8)  | Update Data @ specific address. |`u16 copy_u16Address` address of EPPROM between 0 and 511 <br/> `u8 copy_u8Data` ta will store in EEPROM|`EEPROM_errorState` <a href="#EEPROM_errorState">enum of errors and states</a>  can be returned || 




## _EEPROM_errorState : 

```c
	typedef enum
	{
		EEPROM_N_OK ,	// Usually returned when address exceed 511 
		EEPROM_OK 
	}EEPROM_errorState ; 

```

# Full Example  
## R/W Block from EEPROM 
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "LCD.h"
#include "ATMEGA_EEPROM_Interface.h"
#include <util/delay.h>
u8 arr[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin> 
	//EN
	PORTC , PIN2 ,
	//RS
	PORTC , PIN0 ,
	//D4
	PORTD , PIN4 ,
	//D5
	PORTD , PIN5 ,
	//D6
	PORTD , PIN6 ,
	//D7
	PORTD , PIN7 
};
u8 init = 0 ;
void LCDinit(LCD_Config *myLCD,u8 data )
{
	
	if (init == 0 )
	{
		myLCD->LCD_SIZE_Rows = 2 ; 
		myLCD->LCD_SIZE_Cols = 16 ; 
		myLCD->LCD_PortPins = arr ;
		LCD_voidInit(myLCD); 
		init = 5; 
	}
	else
	{
		LCD_voidSendChar(myLCD,data);
		
	}
}
int main(void)
{
	u8 DATA = 0 ; 
	intEPPROM_Init(); 
	LCD_Config  myLCD ; 
	LCDinit(&myLCD, DATA ); 

	u8 X[8] = "mOHAMED" ;
	u8 R[8] ; 
	intEPPROM_WriteBlock(0,8,X);
	
	
	

	while(1)
	{
		intEPPROM_ReadBlock(0,8,R);
		for(int i = 0 ; i < 7 ; i++)
		{
			LCDinit(&myLCD, R[i]); 
		}		
	}
	return 0;
}
```
![image](https://drive.google.com/uc?export=download&id=1KPru1crlG8LBSqxa1B-moRJclHpfL75J)


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
