/*
 * GccApplication1.c
 *
 * Created: 8/2/2022 1:25:06 PM
 * Author : Abnaby
 */ 
#define  F_CPU 8000000UL
#include <util/delay.h>

typedef unsigned char 		uint8;
#define SET_BIT(reg,bit) (reg |= (1<< bit))
#define CLR_BIT(reg,bit) (reg &= ~(1<< bit))
#define TOG_BIT(reg,bit) (reg ^= (1<< bit))

#define LED1	5
#define LED2	6
#define LED3	7
#define BUZZ	4


/********************************************** REGs ***************************************************/

#define DDRD 	*((volatile uint8 *)  0x31  )
#define PORTD   *((volatile uint8 *)  0x32  )




/*********************************************** INITs *************************************************/
void CLK_Init(); 
void GPIO_Init(); 

/************************************************ MAIN *************************************************/
int main(void)
{
	GPIO_Init();
		
    /* Replace with your application code */
    while (1) 
    {
    	SET_BIT(PORTD,LED1);
    	_delay_ms(100);
    	CLR_BIT(PORTD,LED1);
		SET_BIT(PORTD,LED2);
    	_delay_ms(100);
    	CLR_BIT(PORTD,LED2);
    	SET_BIT(PORTD,LED3);
    	_delay_ms(100);
    	CLR_BIT(PORTD,LED3);
    	SET_BIT(PORTD,BUZZ);
    	_delay_ms(100);
    	CLR_BIT(PORTD,BUZZ);
    	_delay_ms(100);
    }
}

void CLK_Init()
{
	/*	IN AVR DON'T NEED TO INIT CLOCK BECAUSE IT DOESN;T HAVE CLK CONTROLLER	*/
	// BU CAN SELECT CLK SOURCE FROM CKSEL3
}
void GPIO_Init()
{
	// PORT D 5 6 7 --> LED 	PIND4 --> BUZZER

	/********** SET PD4 5 6 7 AS OUTPUT ************************/
	//DDxn is written logic one, Pxn is configured as an output pin.
	 DDRD |= (1<<4);
	 DDRD |= (1<<5);
	 DDRD |= (1<<6);
	 DDRD |= (1<<7);
}
