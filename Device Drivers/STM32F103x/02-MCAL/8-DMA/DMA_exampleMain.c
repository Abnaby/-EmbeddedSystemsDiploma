
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "RCC_interface.h"
#include "NVIC_interface.h"
#include "DMA_interface.h"
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

void xxx(void);


DMA_Config_t DMA0 = {CHANNEL0 ,DMA_HIGH , DISABLE_CIRCULAR , MEM_TO_MEM , WORD ,WORD , MEM_INCREMENT_ENABLE , PERIPHERAL_INCREMENT_ENABLE
					, HALF_TX_INT_DISABLE , TX_INT_ENABLE , ERROR_INT_DISABLE };
int main(void){

	u32 DMA_ARR1[10] = {5} ;
	u32 DMA_ARR2[10] = {0} ;

	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_AHB, 0); // DMA1
	/* NVIC	*/
	NVIC_voidEnableInterrupt(11);
	/* INIT DMA	*/
	DMA_voidInitChannel(&DMA0);
	DMA_voidStatrTransfer(CHANNEL0, DMA_ARR1, DMA_ARR2, 10, xxx) ;



	while(1)
	{

	}

}

void xxx(void)
{
	DNA_voidSetCompleteInterruptState(CHANNEL0, TX_INT_DISABLE);
}
