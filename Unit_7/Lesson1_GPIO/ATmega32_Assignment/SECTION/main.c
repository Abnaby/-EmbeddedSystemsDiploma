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
		for (int i=0; i<=255; i=i*2+1)
		{
			GPIO_PORTD = i;
			_delay_ms(1000);
		}
		for (int i=255; i>=1; i=i/2)
		{
			GPIO_PORTD = i;
			_delay_ms(1000);
		}
    }
}

void CLK_Init()
{
	/*	IN AVR DON'T NEED TO INIT CLOCK BECAUSE IT DOESN;T HAVE CLK CONTROLLER	*/
	// BU CAN SELECT CLK SOURCE FROM CKSEL3
}
void GPIO_Init()
{
	/* config DDRD for output mode */
    GPIO_DDRD = 0xff;
	/* Reset PORTD */
	GPIO_PORTD = 0x00;
}
