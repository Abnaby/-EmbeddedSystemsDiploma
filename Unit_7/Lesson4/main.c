

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "LCD.h"
#include <util/delay.h>
#define mod  4
#if mod == 4 
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
#elif mod == 8 
	u8 arr[]=
	{
		// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin> 
	//EN
	PORTC , PIN2 ,
	//RS
	PORTC , PIN0 ,
	//D0,
	PORTD , PIN0,
	//D1
	PORTD , PIN1,
	//D2
	PORTD , PIN2,
	//D3
	PORTD , PIN3,
	//D4
	PORTD , PIN4 ,
	//D5
	PORTD , PIN5 ,
	//D6
	PORTD , PIN6 ,
	//D7
	PORTD , PIN7 
	};
	
#endif
static u8 LCD_ProgrssBarChar[] = {
  0x1F,
  0x1F,
  0x1F,
  0x1F,
  0x1F,
  0x1F,
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
		_delay_ms(delayOfBar);
	}
	
}

int main(void)
{
	LCD_Config myLCD ; 
	myLCD.LCD_SIZE_Rows = 2 ; 
	myLCD.LCD_SIZE_Cols = 16 ; 
	myLCD.LCD_PortPins = arr ;
	LCD_voidInit(&myLCD); 
	LCD_voidSendString(&myLCD,addString("HI Abnaby Wait"));
	progressBar(&myLCD,100,500); 
	while(1)
	{

		
	}
	return 0;
}
