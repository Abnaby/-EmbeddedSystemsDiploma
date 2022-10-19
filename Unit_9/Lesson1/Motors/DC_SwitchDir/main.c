#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "L293D.h"
L293D_config l293D_MOT1 = {L293D_ENABLE_ATTACH_PB3 , PORTB ,  PIN4 , PORTB,PIN5 } ;
	
int main(void)
{
	u8 switchResult = 0 ; 
	/*	SWITCH INIT	*/
	GPIO_voidInit() ; 
	GPIO_voidSetPinDirection(PORTB, PIN6 , INPUT_PULLUP) ; 
	L293D_voidInit(&l293D_MOT1);
	L293D_voidSetDirection(&l293D_MOT1 , L293D_FWD ) ; 
	L293D_voidSetSpeed(&l293D_MOT1 , 255) ; 
    while(1)
    {
	 switchResult = GPIO_u8GetPinValue(PORTB, PIN6);
     if(switchResult == 0)
	 {
		 L293D_voidToggleDirection(&l293D_MOT1);
	 }
	 
    }
    return 0;
}