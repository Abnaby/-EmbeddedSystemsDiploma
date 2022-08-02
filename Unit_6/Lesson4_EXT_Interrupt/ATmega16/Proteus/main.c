/*
 * GccApplication1.c
 *
 * Created: 8/2/2022 1:25:06 PM
 * Author : Abnaby
 */ 
#define  F_CPU 8000000UL
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
typedef unsigned char 		uint8;

void CLK_Init(); 
void AFIO_Init(); 
void GPIO_Init(); 
void EXTI_Init(); 



int main(void)
{
	GPIO_Init();
	EXTI_Init();
		
    /* Replace with your application code */
    while (1) 
    {
    }
}

void CLK_Init()
{
	/*	IN AVR DON'T NEED TO INIT CLOCK BECAUSE IT DOESN;T HAVE CLK CONTROLLER	*/
	// BU CAN SELECT CLK SOURCE FROM CKSEL3
}
void AFIO_Init()
{
	// AVR Chips will have theri IO pins default to Digital I/O Inputs in Startup.
	//All alternative function will be in-ctive until active a componant that requires one of its pins/
}
void GPIO_Init()
{
	/********** SET PDx AS INPUT	*************************/ 
	DDRD &= ~(1<<2); 
	DDRD &= ~(1<<3); 
	DDRB &= ~(1<<2); 
	
	// PORTxn is written logic one when the pin is configured as an input pin , the pull-up resistor is activated.
	PORTD &= ~(1<<2);
	PORTD &= ~(1<<3);
	PORTB &= ~(1<<2); 
	
	/********** SET PD6 AS OUTPUT ************************/
	//DDxn is written logic one, Pxn is configured as an output pin.
	 DDRD |= (1<<5);
	 DDRD |= (1<<6);
	 DDRD |= (1<<7);
	  	
}
void EXTI_Init()
{
	//Any logical change on INTx 
	MCUCR |= (0b01 << 0) ; //INT0 ANY LOGICAL CHANGE 
	MCUCR |= (0b11 << 2) ; //INT1 RISING EDGE 
	MCUCSR |= (1 << 6 ) ; // INT2 FALLING EDGE 
	
	// Enable  interrupt
	GICR |= (1<<6); // INT0 
	GICR |= (1<<7); // INT1
	GICR |= (1<<5); // INT2
		 	
	// Init Global Interrupt 
	SREG |= (1<< 7); 
}


/*************************** IRQ *********************/ 
ISR(INT0_vect)
{
	 PORTD |= (1<<5) ; 
	 _delay_ms(1000);
	 PORTD &= ~(1<<5) ; 
	 // Clear INT0 Flag
	 GIFR |= (1<<6);	
}
ISR(INT1_vect)
{
	 PORTD |= (1<<6) ; 
	 _delay_ms(1000);
	 PORTD &= ~(1<<6) ; 
	 // Clear INT1 Flag
	 GIFR |= (1<<7);	
}
ISR(INT2_vect)
{
	 PORTD |= (1<<7) ; 
	 _delay_ms(1000);
	 PORTD &= ~(1<<7) ; 
	 // Clear INT2 Flag
	 GIFR |= (1<<5);	
}