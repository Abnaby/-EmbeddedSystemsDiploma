

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "TIMERS_Interface.h"
#include <util/delay.h>
Timer0Config_t myTimer0 = { TIM_Normal_Mode , TIMER0_CLK_OVR_1024};
int main(void)
{
	GPIO_voidInit();
	Timer_voidInitTimer0(&myTimer0); 
	GPIO_voidSetPinDirection(PORTC, PIN0, OUTPUT);
	// Set Pin To High 
	while(1)
	{
		GPIO_voidSetPinValue(PORTC, PIN0, HIGH); 
		Timer_voidSetBusyWait_ms(TIMER0,1000); 
		GPIO_voidSetPinValue(PORTC, PIN0, LOW); 
		Timer_voidSetBusyWait_ms(TIMER0,1000); 
		
	}
	return 0;
}

