

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "TIMERS_Interface.h"
#include "EXT_INT_interface.h"

#include <util/delay.h>
Timer0Config_t myTimer0 = {TIM0_CTC_Mode , TIMER_CLK_OVR_1};
void xxx (void); 
int main(void)
{
	GPIO_voidInit();
	Timer_voidInitTimer0(&myTimer0); 
	GPIO_voidSetPinDirection(PORTC, PIN0, OUTPUT);
	GPIO_voidSetPinValue(PORTC, PIN0, HIGH);
	Timer_voidSetCompMatchInterrupState(TIMER0,TIM_OCM_ENABLE);
	Timer_voidSetIntervalPeriodicMS(TIMER0,1000,xxx);
	Timer_voidStartTimer0();
	EXTINT_voidGlobalIntEnable();	
	while(1)
	{

		
	}
	return 0;
}

void xxx(void)
{
		GPIO_voidTogglePin(PORTC, PIN0);
}
