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
   u8 data;

	int i , j ; 
	
    while (1) 
    {
		MCAL_USART_TxByteSynch('U');		// 01010101
		for(i =0 ; i<255 ; i++)
			for(j=0 ;j<255;j++);
		MCAL_USART_TxByteSynch('W');		// 01010111
		for(i =0 ; i<255 ; i++)
			for(j=0 ;j<255;j++);
    }
}

