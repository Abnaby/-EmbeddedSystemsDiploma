
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "COMMON.h"
#include "GPIO_interface.h"

#include "NVIC_interface.h"
#include "SPI_interface.h"
#include "DMA_interface.h"
#include "SPI_interface.h"
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

u8 arr[10] ;
void DMA_Finished(void);
DMA_Config_t DMA0 = {CHANNEL2 ,DMA_HIGH , DISABLE_CIRCULAR , PREI_TO_MEM , BYTE ,BYTE  , MEM_INCREMENT_ENABLE ,PERIPHERAL_INCREMENT_DISABLE ,
					HALF_TX_INT_DISABLE , TX_INT_ENABLE , ERROR_INT_DISABLE };
/**
 *  SPI1_RX DMA1 CHANNEL2
 */
int main(void){
	/* INIT Clocks */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTA );
	RCC_voidEnableClock(RCC_APB2 , 0 );	/*	AFIO	*/
	RCC_voidEnableClock(RCC_APB2,12 );	/*	SPI1	*/
	RCC_voidEnableClock(RCC_AHB, 0); 	/*	DMA1	*/
	/******************* NVIC	**********************************/
	NVIC_voidEnableInterrupt(12);	/* DMA1 CH2*/
	/********************* SPI	**************************************/
	SPI_config mySPI ;
	mySPI.SPI_Mode = SPI_SLAVE ;
	mySPI.SPI_CommMode = SPI_FULL_DOUPLEX ;
	mySPI.SPI_DataOrder = SPI_MSB_FIRST  ;
	mySPI.SPI_DataSize =SPI_8_BIT_DATA  ;
	mySPI.SPI_IdleLevel = SPI_IDLE_HIGH ;
	mySPI.SPI_DataSampling = SPI_TRAILING_EDGE ;
	mySPI.SPI_BuadRate = SPI_BUAD_PRESCALED_BY_8;
	mySPI.SPI_IRQ =SPI_IRQ_DISABLED ;
	mySPI.SPI_DMA = SPI_DMA_RX_ENABLE ;
	mySPI.SPI_SlaveSelectMangment =SPI_SSM_SW_SLAVE_SET ;
	mySPI.P_IRQ_CallBack = NULL ;
	SPI_voidInit(SPI_1, &mySPI);

	/*********************** DMA	******************************/
	u32 DMA_address = 0 ;
	DMA_voidInitChannel(&DMA0);
	SPI_voidGetDMA_PeripheralAddress(SPI_1 , &DMA_address);
	DMA_voidStatrTransfer(CHANNEL2,DMA_address , arr, 200, DMA_Finished) ;

	/******************* GPIO	**********************************/
	SPI_VoidGPIO_SetPins(SPI_1);

	/******************* USART INIT	******************************/



	/***************** TFT	****************************************/

	while(1)
	{

	}

}
void DMA_Finished(void)
{

}
