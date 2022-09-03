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
#include "TWI_Interface.h"
#include<avr/io.h>
#include <util/delay.h>

#include "USART_Interface.h"
/*		INIT I2C			*/


TWI_Config myI2C=
{
	SLAVE , 
	NORMAL_MODE
};
int main (void)
{
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);

	

	MCAL_TWI_Init(&myI2C);
	

					
	u8 a = '0' , error ; 
	MCAL_TWI_SlaveAddressMatch(SLA_R);

	while(1)
	{
		error = MCAL_TWI_Write(a);
		if (error ==  ACK_RECEIVED)
		{
			MCAL_USART_SendString ("ACK_RECEIVED    "); 
		}
		else if (error == NACK_RECEIVED)
		{
			MCAL_USART_SendString ("NACK_RECEIVED    ");
			
		}
		else
        {
                        MCAL_USART_SendString (" XDXDXD    "); ;

        }

		
		(a>= '0' && a<= '9') ? (a++) : (a='0');

	}

}
