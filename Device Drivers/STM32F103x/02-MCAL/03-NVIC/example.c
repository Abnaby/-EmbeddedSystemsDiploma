
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "SCB_interface.h"
#include "NVIC_interface.h"

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}


void main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	/*			SET PRIORITY	*/
	SCB_voidSetPriorityGrouping(SCB_4_GROUP_4_SUB_GROUP);
	NVIC_voidSetIRQ_PriorityGrouping(6, 3, 2);
	while(1){



	}

}
