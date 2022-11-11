
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "COMMON.h"
#include "STK_interface.h"
#include "GPIO_interface.h"
#include "USART_interface.h"
#include "DMA_interface.h"
#include "TFT_interface.h"
#include "imag.h"
volatile u16 x ;

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
	RCC_voidEnableClock(RCC_APB2,PORTA );
	/******************* NVIC	**********************************/


	/******************* GPIO	**********************************/


	/******************* USART INIT	******************************/


	/***************** TFT	****************************************/
	TFT_voidInit();
	TFT_voidDisplayImage(image);
	while(1)
	{

	}

}
