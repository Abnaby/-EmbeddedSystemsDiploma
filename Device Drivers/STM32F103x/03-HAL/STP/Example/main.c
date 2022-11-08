
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "RCC_interface.h"
#include "STP.h"

void xDelay(u32 time)
{
	u32 i;
	u32 j;
	for(i = time;i > 0;i--)
		for(j = 1000;j > 0;j--);

}

STP_Config_t mySTP = {PORTA ,PIN0 ,PORTA ,PIN2 ,PORTA,PIN1 } ;
int main(void){
	/* INIT Clocks */
	RCC_voidInitSysClocks() ;
	RCC_voidEnableClock(RCC_APB2, PORTA);
	/* Init STP	*/
	STP_voidInit(&mySTP);

	while(1)
	{
		for(u8 i = 0 ; i < 255 ; i++)
		{
				STP_voidSendSynchronus(&mySTP, i);
				STK_voidSetBusyWait_MS(1000);

		}
	}

}

