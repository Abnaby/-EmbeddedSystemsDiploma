

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "TIMERS_Interface.h"
#include "EXT_INT_interface.h"

#include <util/delay.h>
Timer0Config_t myTimer0 = {TIM0_CTC_Mode , TIMER_CLK_OVR_1024};
int main(void)
{
	GPIO_voidInit();
	Timer_voidInitTimer0(&myTimer0); 
	GPIO_voidSetPinDirection(PORTB, PIN3, OUTPUT);
	GPIO_voidSetPinValue(PORTB, PIN3, HIGH);
	Timer_voidSetCompareValue(TIMER0,200); 
	Timer_voidOutputPinMode(TIMER0,TIM0_OC0_TOGGLE); 
	Timer_voidStartTimer0();
	EXTINT_voidGlobalIntEnable();	
	while(1)
	{

		
	}
	return 0;
}

