
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "RCC_interface.h"
#include "GPIO_interface.h"

void main(void){


	/*			init clock			*/
	RCC_voidInitSysClocks();
	RCC_voidEnableClock(RCC_APB2, PORTA);
	RCC_voidEnableClock(RCC_APB2, PORTB);
	RCC_voidEnableClock(RCC_APB2, PORTC);

	/*			GPIO				*/
	GPIO_voidSetPinDirection(PORTA, PIN0, GPIO_OUTPUT_10MHZ_PUSH_PULL);
	GPIO_voidSetPinDirection(PORTB, PIN10, GPIO_OUTPUT_2MHZ_PUSH_PULL);
	GPIO_voidSetPinDirection(PORTC, PIN15, GPIO_OUTPUT_50MHZ_PUSH_PULL);
	GPIO_voidSetPinDirection(PORTA, PIN10, GPIO_PULLUP_PULLDOWN);

	while(1){
		GPIO_voidSetPinValue(PORTA,PIN0,HIGH);
		GPIO_voidSetPinValue(PORTB, PIN10,HIGH);
		GPIO_voidSetPinValue(PORTC, PIN15,HIGH);
		if(GPIO_u8GetPinValue(PORTA,PIN10))
		{
			GPIO_voidTogglePinValue(PORTB, PIN10);
		}

	}

}
