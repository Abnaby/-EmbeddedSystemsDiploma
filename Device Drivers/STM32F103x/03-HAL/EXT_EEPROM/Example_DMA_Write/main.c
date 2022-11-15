
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "COMMON.h"
#include "GPIO_interface.h"
#include "I2C_interface.h"
#include "I2C_private.h"
#include "EXT_EEPROM.h"
#include "DMA_interface.h"
#include "NVIC_interface.h"
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}
u8 arr[EXT_EEPROM_BUFFER_SIZER] = {1,2,3,4,5,6,7};
void DMA_Finished(void);
/*
 * I2C1_TX CH6
 */
u32 DMA_address = 0 ;

int main(void){
	/* INIT Clocks */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTA );
	RCC_voidEnableClock(RCC_APB2,PORTB );
	RCC_voidEnableClock(RCC_APB2 , 0 );	/*	AFIO	*/
	RCC_voidEnableClock(RCC_AHB, 0); 	/*	DMA1	*/

	/******************* NVIC	**********************************/
	/**************** EXT EEPROM and I2C Init	**********************************/
	EEPROM_voidInit();
	EEPROM_voidWriteNBytes_DMA(0x00AF , arr , 7 , DMA_Finished);

	/*********************** DMA	******************************/


	/********************* SPI	**************************************/

	/******************* GPIO	**********************************/

	/******************* USART INIT	******************************/

	/***************** TFT	****************************************/




	while(1)
	{

	}

}



void DMA_Finished(void)
{


}
