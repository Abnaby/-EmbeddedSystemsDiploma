

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
