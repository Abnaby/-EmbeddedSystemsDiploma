/**
* @file USART_Config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-14
*
*/
#ifndef USART_CONFIG_H 
#define USART_CONFIG_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/

/******************************************************************************
* Typedefs
*******************************************************************************/
typedef enum
{
	RECEIVE					= 0b10,
	TRANSMIT				= 0b01,			
	TRANCIVER				= 0b11
}USART_stateCnfg;


typedef enum
{
	_5BIT                   = 0b000,
	_6BIT                   = 0b001,
	_7BIT                   = 0b010,
	_8BIT                   = 0b011,
	_9BIT                   = 0b111
}USART_dataBitsCnfg;

typedef enum
{
	DISABLED_PARITY         = 0,
	ODD_PARITY             = 0b100000,
	EVEN_PARITY              = 0b110000
}USART_parityCnfg;


typedef enum
{
	_1STOPBIT               = 0,
	_2STOPBIT               = 0b1000
}USART_stopBitCnfg; 

typedef enum
{
	Asynchronous            = 0,
	Synchronous             = 1
}USRT_operationCnfg;



typedef struct  
{
	u16                     baudrate;
	USART_dataBitsCnfg      databits;
	USART_parityCnfg        parity;
	USART_stopBitCnfg       stopbits;
	USART_stateCnfg         state;
	USRT_operationCnfg      operation;
}UART_cnfg;



/******************************************************************************
* Configuration Constants
*******************************************************************************/




#endif
/************************************* End of File ******************************************/