
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
