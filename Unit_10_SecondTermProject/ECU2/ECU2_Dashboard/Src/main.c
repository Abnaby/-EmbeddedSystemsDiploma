
#include "../Inc/LIB/STD_TYPES/STD_TYPES.h"
#include "../Inc/LIB/BIT_MATH/BIT_MATH.h"
#include "../Inc/LIB/COMMON/COMMON.h"

#include "../Inc/MCAL/RCC/RCC_interface.h"
#include "../Inc/MCAL/GPIO/GPIO_interface.h"
#include "../Inc/MCAL/SPI/SPI_interface.h"

#include "../Inc/HAL/Buzzer/Buzzer.h"
#include "../Inc/HAL/_7Segment/_7Segment.h"
#include "../Inc/HAL/KeyPad/KeyPad.h"
#include "../Inc/HAL/LCD/LCD.h"

volatile static void xDelay(u32 time)
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

SPI_config mySPI ;

void SPI_voidSetup(void)
{
	GPIO_voidSetPinDirection(PORTA, PIN4,GPIO_OUTPUT_10MHZ_PUSH_PULL) ;
	// Force the Slave Select (HIGH) for idle Mode
	GPIO_voidSetPinValue(PORTA, PIN4, HIGH);


	mySPI.SPI_CommMode = SPI_FULL_DOUPLEX ;
	mySPI.SPI_DataOrder = SPI_MSB_FIRST  ;
	mySPI.SPI_DataSize =SPI_8_BIT_DATA  ;
	mySPI.SPI_IdleLevel = SPI_IDLE_HIGH ;
	mySPI.SPI_DataSampling = SPI_TRAILING_EDGE ;
	mySPI.SPI_BuadRate = SPI_BUAD_PRESCALED_BY_16;
	mySPI.SPI_Mode = SPI_MASTER ;
	mySPI.SPI_IRQ =SPI_IRQ_DISABLED ;
	mySPI.SPI_SlaveSelectMangment =SPI_SSM_SW_SLAVE_SET ;
	mySPI.P_IRQ_CallBack = NULL ;
	SPI_voidInit(SPI_1, &mySPI) ;
	SPI_VoidGPIO_SetPins(SPI_1);
}
u8 c ;
void main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2,PORTA );
	RCC_voidEnableClock(RCC_APB2 , 0 );
	RCC_voidEnableClock(RCC_APB2,12 );
	/*			init lcd			*/
	LCD_Config myLCD ;
	myLCD.LCD_SIZE_Rows = 4 ;
	myLCD.LCD_SIZE_Cols = 16 ;
	myLCD.LCD_PortPins = arr ;
	LCD_voidInit(&myLCD);
	SPI_voidSetup() ;
	u16 x = 0 ;
	u16 y  = '+' ;
	LCD_voidSendString(&myLCD, "hELEO");
	while(1){

		GPIO_voidSetPinValue(PORTA, PIN4 , LOW) ;
		SPI_voidSend_RecieveDataSynch(SPI_1, &y,&c);
		LCD_voidSendChar(&myLCD,(u8)c);
		GPIO_voidSetPinValue(PORTA, PIN4 , HIGH) ;
		xDelay(1000) ;

	}

}
