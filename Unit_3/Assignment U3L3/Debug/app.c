/*********************************************************************************
	@ Author    		 : Mohamed Abd El-Naby
	@ version   		 : V01                                                                
	@ Date     			 : 17 Novamber 2021    
	@ Devlopment Board 	 : VersatilePB physical Board                           
*********************************************************************************/

#include "Platform_Types.h"
#include "uart.h"

/*	Define Global String 	*/
uint8 Global_uint8StringBuffer[100]= "Learn-in-depth:<Mohamed ABd EL-Naby>";


void main (void)
{
	boolean Local_booleanUART_ErrorState = 0 ; 
	Local_booleanUART_ErrorState = UART_booleanSendString(Global_uint8StringBuffer); 
	while (Local_booleanUART_ErrorState != TRUE)
	{
		Local_booleanUART_ErrorState = UART_booleanSendString(Global_uint8StringBuffer); 
	}

}
