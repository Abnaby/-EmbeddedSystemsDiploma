

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "PWM_Interface.h"
#include "PWM_Private.h"

#include <util/delay.h>

PWM_config_t x = {TIMER1 , PWM1_PHASE_FREQ_CORRECT , PWM_TIMER1_CLK_OVR_1024};	
int main(void)
{
	
	GPIO_voidInit();
	PWM_voidInit(&x);
	PWM_voidSetOCPin(&x,PWM1_PD4_PFC_SET_AT_COMP);
	GPIO_voidSetPinDirection(PORTD, PIN4, OUTPUT);
	PWM_voidGeneratePWM(&x,100,70);
	while(1)
	{
		
	}
	return 0;
}

