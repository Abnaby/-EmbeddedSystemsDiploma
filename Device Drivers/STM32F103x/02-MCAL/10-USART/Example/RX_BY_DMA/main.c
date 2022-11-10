
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "COMMON.h"
#include "STK_interface.h"
#include "GPIO_interface.h"
#include "USART_interface.h"
#include "DMA_interface.h"

	volatile u16 x ;

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

u8 arr[10] ;
void DMA_Finished(void);
DMA_Config_t DMA0 = {CHANNEL5 ,DMA_HIGH , DISABLE_CIRCULAR , PREI_TO_MEM , BYTE ,BYTE  , MEM_INCREMENT_ENABLE ,PERIPHERAL_INCREMENT_DISABLE ,
					HALF_TX_INT_DISABLE , TX_INT_ENABLE , ERROR_INT_DISABLE };

int main(void){
	/* INIT Clocks */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTA );
	RCC_voidEnableClock(RCC_APB2,14 );		/*	USART1	*/
	RCC_voidEnableClock(RCC_AHB, 0); // DMA1
	/******************* NVIC	**********************************/
	NVIC_voidEnableInterrupt(15);	/* DMA1 CHC5*/


	/******************* GPIO	**********************************/
	USART__VoidGPIO_SetPins(USART_1);


	/******************* USART INIT	******************************/
	USART_Config myUART ;
	myUART.USART_OperationMode = USART_TRANCIVER ;
	myUART.USART_BuadRate = 9600 ;
	myUART.USART_DataLength = USART_8BIT ;
	myUART.USART_Parity =USART_DISABLE_PARITY ;
	myUART.USART_StopBit = USART_1_STOPBIT ;
	myUART.USART_HWFlowControl = USART_HW_FLOW_CONTROLLED_DISALBED ;
	myUART.USART_IdleLevel     =USART_IDLE_LOW ;
	myUART.USART_DataSampling  = USART_LEADING_EDGE ;
	myUART.USART_IRQ_t =USART_DISABLE_IRQs ;
	myUART.USART_DMA =DMA_RX_ENABLE ;
	myUART.P_IRQ_CallBack = NULL ;
	USART_voidInit(USART_1, &myUART);
	/*****************	DMA	************************/
	u32 DMA_address = 0 ;
	DMA_voidInitChannel(&DMA0);
	USART_voidGetDMA_PeripheralAddress(USART_1, &DMA_address) ;
	DMA_voidStatrTransfer(CHANNEL5, DMA_address, arr, 10, DMA_Finished) ;


	u16 data = 0 ;
	u16 i = 0 ;
	while(1)
	{

	}

}
void DMA_Finished(void)
{
	char arr2[]= "DMA Finished :) \0" ;
	u8 counter = 0 ;
	while (arr2[counter] != '\0')
	{
		USART_voidSendDataSynch(USART_1, &arr2[counter]);
		counter++ ;
	}
}
