
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "SPI_Interface.h"
#include "SPI_Private.h"
#include "USART_Interface.h"
#include "EXT_INT_interface.h"
#include<avr/io.h>
//#include<util/delay.h>

void interrupt_x(void);
/*									SLAVE					*/

char arr[]={0b00111111,0b00000110,0b01011011,0b01001111,0b01100110,0b01101101,0b11111101,0b00000111,0b01111111,0b11101111};   

SPI_Config mySPI =	
{
    SPI_INTERRUPT_ENABLE  ,
    SPI_LSB_FIRST   ,
    SPI_SLAVE    ,
    SPI_IDLE_LOW   ,
    SPI_LEADING_EDGE  ,
    SPI_Fosc_OVER_4	

};
int main (void)
{
	/*		GPIO INIT FOR 7SEG			*/
	DDRC=0XFF;
	/*		GPIO INIT FOR SPI			*/
	GPIO_voidSPI_SlaveInit();
	/*		SPI INIT					*/
	MCAL_SPI_voidInit(&mySPI);
	
	MCAL_SPI_voidReceiveByteSynch(interrupt_x);
	/*		Enable Global Interrupt		*/
	EXTINT_voidGlobalIntEnable();
	while(1)
	{
	}

}
void interrupt_x (void)
{
	u8 k  ; 
	MCAL_SPI_voidReceiveByteAsynch(&k);
	switch(k)
	{
		case '0' : PORTC= arr[0] ; break ; 
		case '1' : PORTC= arr[1] ;break ; 
		case '2' : PORTC= arr[2] ;break ; 
		case '3' : PORTC= arr[3] ;break ; 
		case '4' : PORTC= arr[4] ;break ; 
		case '5' : PORTC= arr[5] ;break ; 
		case '6' : PORTC= arr[6] ;break ; 
		case '7' : PORTC= arr[7] ;break ; 
		case '8' : PORTC= arr[8] ;break ; 
		case '9' : PORTC= arr[9] ;break ; 
			
	}
	
}