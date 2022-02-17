/*********************************************************************************
	@ Author    : Mohamed Abd El-Naby
	@ version   : V01                                                                
	@ Date      : 17 Novamber 2021                                
*********************************************************************************/
#ifndef _UART_H_
#define _UART_H_ 


/*
	@ Module   				: UART
	@ Chennal  				: 0
	@ Reg Name 				: UARTDR
	@ Module Base Address 	: 0x101f1000
	@ Reg Offeset			: xxxxxxxxx
	@ Reg Description 		:	


*/
#define UART0_BASE_ADDRESS 0x101f1000

/*
	@ Module   				: UART
	@ Chennal  				: 0
	@ Reg Name 				: UARTDR
	@ Module Base Address 	: Select UART Chennel 
	@ Reg Offeset			: 0x00
	@ Reg Description 		:	


*/
#define UART0DR    *(volatile uint32 * const)(UART0_BASE_ADDRESS + 0x00)
/*
	@ Function Name 	 : UART_booleanSendString
	@ Description   	 : Send String By UART chennel Zero
	@ Parameters    	 : 
					 		- *P_txString : pointer to uint8 - String- to send by UART
	@ Return 			 : boolean
	@ Return Description : True  --> if string sent successfully 
						   False --> Error in String (Empty String)

*/
boolean UART_booleanSendString (uint8 *P_txString);
#endif 