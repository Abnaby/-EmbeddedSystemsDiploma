#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "TIMERS_Interface.h"

Timer2Config_t myTimer2 = {TIMER2_EXTERNAL_CLK  , TIMER2_CLK_OVR_256 , TIM_Normal_Mode};
int main(void)
{
	GPIO_voidInit();
	Timer_voidInitTimer2(&myTimer2); 
	GPIO_voidSetPinDirection(PORTB, PIN0, OUTPUT);
	GPIO_voidSetPinValue(PORTB, PIN0, HIGH);
	Timer_voidStartTimer(TIMER2);
	//EXTINT_voidGlobalIntEnable();
	u16 data = 0 ;
	while(1)
	{
	Timer_u8GetCounterTimer(TIMER2,&data); 
	if(data >= 128)
	{
			GPIO_voidTogglePin(PORTB, PIN0);
			Timer_u8SetCounterTimer(TIMER2,0);
	}
		
	}
	return 0;
}
