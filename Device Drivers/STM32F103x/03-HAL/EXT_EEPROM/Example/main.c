
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "COMMON.h"
#include "GPIO_interface.h"
#include "I2C_interface.h"
#include "EXT_EEPROM.h"
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}
int main(void){
	/* INIT Clocks */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTB) ; // I2C ON PORT B
	RCC_voidEnableClock(RCC_APB1, 21) ;	// I2C

	/******************* NVIC	**********************************/

	/********************* SPI	**************************************/

	/*********************** DMA	******************************/

	/******************* GPIO	**********************************/

	/******************* USART INIT	******************************/

	/***************** TFT	****************************************/

	/**************** EXT EEPROM	**********************************/
	// Test case 1
	u8 ch1[] = {0x1,0x2,0x3,0x4,0x5,0x6,0x7};
	u8 ch2[7] = {0} ;
	EEPROM_voidInit();
	EEPROM_voidWriteNBytes(0x00AF, ch1, 7);
	EEPROM_voidReadNBytes(0x00AF, ch2, 7);
	// tast case 2
	ch1[0]= 0xA;
	ch1[1]= 0xB;
	ch1[2]= 0xC;
	ch1[3]= 0xD;
	EEPROM_voidWriteNBytes(0x0FFF, ch1, 4);
	EEPROM_voidReadNBytes(0x0FFF, ch2, 4);



	while(1)
	{

	}

}
void DMA_Finished(void)
{

}
