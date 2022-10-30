
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"
#include "NVIC_interface.h"

#include "STK_interface.h"
void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

void xxx(void);

int main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	GPIO_voidSetPinDirection(PORTA, PIN5, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	/*		INIT STK		*/
	STK_voidInit();
	STK_voidSetIntervalPeriodic_MS(800, xxx);
	while(1)
	{

	}

}


void xxx(void)
{

	GPIO_voidTogglePinValue(PORTA, PIN5);
}

