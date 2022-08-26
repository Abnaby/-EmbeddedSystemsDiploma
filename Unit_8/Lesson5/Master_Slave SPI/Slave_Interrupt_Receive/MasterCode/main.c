/**
 * @file main.c
 * @author Mohamed Abd El-Naby (mahameda.naby#gmail.com)
 * @brief this file contain the main code of application
 * @version 0.1
 * @date 2022-08-18
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "SPI_Interface.h"
#include "SPI_Private.h"

#include "USART_Interface.h"

#include<avr/io.h>
#include<util/delay.h>


/*							MASTER						*/


SPI_Config mySPI =	
{
    SPI_INTERRUPT_DISABLE  ,
    SPI_LSB_FIRST   ,
    SPI_MASTER    ,
    SPI_IDLE_LOW   ,
    SPI_LEADING_EDGE  ,
    SPI_Fosc_OVER_4	

};
int main (void)
{ 
	GPIO_voidSPI_MasterInit();
	MCAL_SPI_voidInit(&mySPI);
	u8   k = '0' ;
	while(1)
	{
		MCAL_SPI_voidSendByteAsynch(k);
		_delay_ms(200); 
		( k > '9') ? k = '0' : k++ ; 
	}

}
