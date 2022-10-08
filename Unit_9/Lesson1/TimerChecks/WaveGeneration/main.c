

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "TIMERS_Interface.h"
#include "EXT_INT_interface.h"

Timer0Config_t myTimer0 = {TIM0_CTC_Mode , TIMER_CLK_OVR_1024};
int main(void)
{
	GPIO_voidInit();
	Timer_voidInitTimer0(&myTimer0); 
	GPIO_voidSetPinDirection(PORTB, PIN3, OUTPUT);
	GPIO_voidSetPinValue(PORTB, PIN3, LOW);
	Timer_voidGenerateSignal(TIMER0,50,50);
	Timer_voidStartTimer0();
	EXTINT_voidGlobalIntEnable();	
	while(1)
	{

		
	}
	return 0;
}

