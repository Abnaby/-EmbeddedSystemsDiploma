/*********************************************************************************
	@ Author    : Mohamed Abd El-Naby
	@ version   : V01                                                                
	@ Date      : 17 Novamber 2021                                
*********************************************************************************/
#include "Platform_Types.h"
#include "uart.h"

boolean UART_booleanSendString (uint8 *P_txString)
{
	/*	Local Variable used to track error */
	boolean Local_uint8ErrorState = 0 ; 
	/*  Send string until get null character */
	while (*P_txString != '\0' )
	{
		/*	Chang Error State 	*/
		Local_uint8ErrorState = 1 ;
		/*	Send Character 	*/
		UART0DR = (uint8)(*P_txString) ;
		/*	Get next character	*/
	 	P_txString++ ; 
	}	
	/*	Return Error State 		*/
	return Local_uint8ErrorState ; 
}