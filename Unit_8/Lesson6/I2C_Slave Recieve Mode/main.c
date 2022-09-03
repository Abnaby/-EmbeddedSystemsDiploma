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


TWI_Config myI2C=
{
	SLAVE , 
	NORMAL_MODE
};

void funcToBeExected (u8 recievedData);

int main (void)
{
	// ***********************USART*********************************
	UART_cnfg x ; 	
	x.baudrate = 9600 ;
	x.databits =  _8BIT;
	x.parity= DISABLED_PARITY;
	x.stopbits= _1STOPBIT ;
	x.state= TRANCIVER ;
	x.operation= Asynchronous;
	MCAL_USART_init(&x);

	
	//**********************IIC**********************************

	MCAL_TWI_Init(&myI2C);
	u8 data= 0x00 ; 

					

	while(1)
	{
		MCAL_TWI_SlaveAddressMatch(SLA_W);
		MCAL_TWI_ReceiveUntillStop(funcToBeExected);
	}

}

void funcToBeExected (u8 recievedData)
{
	MCAL_USART_TxChar(recievedData);
}