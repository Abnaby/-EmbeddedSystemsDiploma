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
#include "USART_Interface.h"

/**
 * @brief This is the entery point of code 
 * 
 * @return int (will never happen)
 */
int main(void)
{
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= ODD_PARITY;
	x.stopbits= _2STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
   MCAL_USART_init(&x);

	MCAL_USART_SendString("Hello From The Other Side :) ") ; 
	
    while (1) 
    {

    }
}

