

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "PWM_Interface.h"

#include <util/delay.h>

PWM_config_t x = {TIMER2 , PWM2_FAST_MODE , TIMER2_CLK_OVR_1};	
int main(void)
{
	
	GPIO_voidInit();
	PWM_voidInit(&x);
	PWM_voidSetOCPin(&x,PWM2_PD7_FM_NON_INVERTING);
	GPIO_voidSetPinDirection(PORTD, PIN7, OUTPUT);
	u8 duty = 0 ; 
	while(1)
	{
		for(duty=0; duty<=105; duty++)
		{	
			PWM_voidSetDuty(&x,duty); 
			_delay_ms(8);
		}
		for(duty=105; duty>=1; duty--)
		{
			PWM_voidSetDuty(&x,duty); 
			_delay_ms(8);
		}
	}
	return 0;
}

