#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "TIMERS_Interface.h"

Timer1Config_t myTimer1 = {TIM_Normal_Mode , TIMER1_CLK_OVR_64};
void xxx (void); 
int main(void)
{
	GPIO_voidInit();
	Timer_voidInitTimer1(&myTimer1); 
	GPIO_voidSetPinDirection(PORTB, PIN0, OUTPUT);
	GPIO_voidSetPinValue(PORTB, PIN0, HIGH);
	Timer_voidSetOverflowCallback(TIMER1,xxx); 
	Timer_voidSetOVInterrupState(TIMER1 , TIM_OV_ENABLE) ;
	Timer_voidStartTimer(TIMER1);
	EXTINT_voidGlobalIntEnable();
	while(1)
	{
	}
	return 0;
}
void xxx (void)
{
		GPIO_voidTogglePin(PORTB, PIN0);
}