#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "ADC_Interface.h"
#include <util/delay.h>
#include "LCD.h"
#include "EXT_INT_interface.h"

ADC_config_t myADC = {ADC_REF_AVCC , ADC_PRESCALED_64 , ADC_SINGLE_CONVERSION , ADC_IRQ_DISABLE } ;
u8 arr[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin> 
	//EN
	PORTC , PIN2 ,
	//RS
	PORTC , PIN0 ,
	//D4
	PORTD , PIN4 ,
	//D5
	PORTD , PIN5 ,
	//D6
	PORTD , PIN6 ,
	//D7
	PORTD , PIN7 
};
LCD_Config myLCD  = { 2 , 16 ,arr }  ; 
u16 convVal  = 0 ;
float temp ; 
u8 buffer[10] ; 
void xxx (void); 
int main(void)
{
	/*	ADC INIT	*/
	ADC_voidInit(&myADC);
	ADC_voidSetInterruptStates(ADC_IRQ_ENABLE);
	ADC_voidSetIRQ_CallBack(xxx);
	/* LCD INIT	*/
	LCD_voidInit(&myLCD); 
	LCD_voidSendString(&myLCD,addString("LCD Initialized"));
	_delay_ms(500);
	LCD_voidSendString(&myLCD,addString("Temp is"));
	/*	INTERRUPT ENABLE	*/
	EXTINT_voidGlobalIntEnable();
    while(1)
    {
		ADC_voidStartConvertionAsynch(ADC_CHENNEL_7_SE);
		_delay_ms(500);
    }
    return 0;
}

void xxx (void)
{
	LCD_voidGotoXY(&myLCD,0,1);
	ADC_voidReadVal(&convVal);
	temp = (convVal*4.88)/10.00 ; 
	itoa((int)temp, buffer , 10 );
	LCD_voidSendString(&myLCD,buffer); 
}
