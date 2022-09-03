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


char arr[]={0b00111111,0b00000110,0b01011011,0b01001111,0b01100110,0b01101101,0b11111101,0b00000111,0b01111111,0b11101111};   
/*		INIT I2C			*/
TWI_Config myI2C=
{
	MASTER , 
	NORMAL_MODE
};
int main (void)
{
	/*		GPIO INIT FOR 7SEG			*/
	//DDRC=0XFF;
	MCAL_TWI_Init(&myI2C);
	u8 error ,*ptr; 
	while(1)
	{
		error = 	MCAL_TWI_StartCondition(); 
		if (error == NO_ERROR)
		{
			error = MCAL_TWI_SlaveAddress(0x10);
			if (error == ACK_RECEIVED)
			{
				error = MCAL_TWI_Write(0xA9);
				if (error == ACK_RECEIVED)
				{
						MCAL_TWI_StopCondition(); 
					
				}
			}

		}
		_delay_ms(1000);		
	}

}
