

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "WDT_Interface.h"
#include <util/delay.h>
int main(void)
{
	GPIO_voidInit();
	GPIO_voidSetPinDirection(PORTC, PIN0, OUTPUT);
	// Set Pin To High 
	GPIO_voidSetPinValue(PORTC, PIN0, HIGH); 
	_delay_ms(500);
	while(1)
	{
		// START WDT 
		WDT_voidStart(WDT_TIM_OUT_1P0_SEC); 
		GPIO_voidTogglePin(PORTC,PIN0); 
	   _delay_ms(2000);
	   WDT_voidStop();	
	}
	return 0;
}
