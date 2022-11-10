
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "COMMON.h"
#include "STK_interface.h"
#include "GPIO_interface.h"
#include "USART_interface.h"

	volatile u16 x ;

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

volatile u16 data = 0 ;

void USART_callback(u16 copy_u16data);

int main(void){
	/* INIT Clocks */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2,PORTA );
	RCC_voidEnableClock(RCC_APB2,14 );		/*	USART1	*/
	/******************* NVIC	**********************************/
	NVIC_voidEnableInterrupt(37);	/* USART1*/

	/******************* GPIO	**********************************/
	USART__VoidGPIO_SetPins(USART_1);


	/******************* USART INIT	******************************/
	USART_Config myUART ;
	myUART.USART_OperationMode = USART_TRANCIVER ; ;
	myUART.USART_BuadRate = 9600 ;
	myUART.USART_DataLength = USART_8BIT ;
	myUART.USART_Parity =USART_DISABLE_PARITY ;
	myUART.USART_StopBit = USART_1_STOPBIT ;
	myUART.USART_HWFlowControl = USART_HW_FLOW_CONTROLLED_DISALBED ;
	myUART.USART_IdleLevel     =USART_IDLE_LOW ;
	myUART.USART_DataSampling  = USART_LEADING_EDGE ;
	myUART.P_IRQ_CallBack = USART_callback ;
	myUART.USART_IRQ_t = USART_ENABLE_RXNE_IRQs ;



	USART_voidInit(USART_1, &myUART);
	/******************* Send Asynch	**************************/
	USART_voidReceiveDataAsynch(USART_1) ;


	while(1)
	{
		//USART_voidReceiveDataSynch(USART_1, &data);
		//USART_voidSendDataSynch(USART_1, &data);

	}

}
void USART_callback(u16 copy_u16data )
{
	USART_voidSendDataAsynch(USART_1, &copy_u16data) ;



}
