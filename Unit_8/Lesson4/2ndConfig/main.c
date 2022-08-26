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
	/*	GPIO SPI INIT	*/
	GPIO_voidSPI_MasterInit();
	/*	SPI INIT	*/
	MCAL_SPI_voidInit(&mySPI);
	MCAL_SPI_voidSendByteAsynch('H');		//	H	-->		0b01001000	
	MCAL_SPI_voidSendByteAsynch('L');		//	L	-->		0b01001100	
	MCAL_SPI_voidSendByteAsynch('O');		//	O	-->		0b01001111	

	
	char i=0;
	while(1)
	{
		for(i=48;i<57;i++)
		{
				MCAL_SPI_voidSendByteAsynch(i);
				for (volatile int i = 0 ; i<255 ; i++)
				for (volatile int j = 0 ; j<255 ; j++);
		}	  
	}

}
