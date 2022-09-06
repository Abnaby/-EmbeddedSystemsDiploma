/**
* @file USART_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-14
*
*/
#ifndef USART_INTERFACE_H 
#define USART_INTERFACE_H 
#include "USART_Config.h"




/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/
/**
 * @brief This is a initilze function for USART in ATmega16
 * 
 * @param ptr_UsartConfig  struct contains the data to be initilized in USART
 * @return void
 */
void MCAL_USART_init(UART_cnfg* ptr_usart);
/**
 * @brief This is a function can transmit a byte of data.
 * 
 * @param copy_u8Data variable that hold data to be transmit. 
 * @return void
 * @return void
 */
void MCAL_USART_TxByteSynch(u8 copy_u8Data);
/**
 * @brief This is a function can transmit a 4 byte of data.
 * 
 * @param copy_u32Data variable that hold data to be transmit.
 * @return void
 */
void MCAL_USART_TxSynch(u32 copy_u32Data);
/**
 * @brief This is a function can receive a byte of data.
 * 
 * @param ptr_u8ReceivedData pointer to variable to hold received data on it
 */
void MCAL_USART_RxByteSynch(u8 *ptr_u8ReceivedData);
/**
 * @brief This is a function can receive a 4 byte of data.
 * 
 * @param ptr_u8ReceivedData pointer to variable to hold received data on it
 */
void MCAL_USART_RxSynch(u32 *ptr_u32ReceivedData);
/**
 * @brief This function can send a string .
 * 
 * @param str pointer to array of characters.
 * @return void
 */
void MCAL_USART_SendString (u8 *str);
/**
 * @brief This function can send a character of data 
 * 
 * @param ch its a character to be send.
 * @return void
 */
void MCAL_USART_TxChar(u8 ch);
/**
 * @brief This function can send a character of data Asynchronously  
 * 
 * @param copy_u8Data its a character to be transmited.
 * @return void
 */
void MCAL_USART_TxByteAsynch(u8 copy_u8Data, void(*Tx_CallBack)(void));
/**
 * @brief This is a function can receive a byte of data Asynchronously.
 * 
 * @param ptr_u8ReceivedData pointer to variable to hold received data on it
 * @return void
 */
void MCAL_USART_RxByteAsynch(u8 *ptr_u8ReceivedData);
/**
 * @brief This is a function used to Disable Interrupt For Transmit.
 * 
 * @param void
 * @return void
 */
void MCAL_voidDisableTxInterrupt(void);
/**
 * @brief This is a function used to Disable Interrupt For Receive.
 * 
 * @param void
 * @return void
 */
void MCAL_voidDisableRxInterrupt(void);
/**
 * @brief This is a function gets the statues of desired flag.
 * 
 * @param u8 Desired Flag 
 * @return USART_FlagsStatus state if desired flag 
 */
USART_FlagsStatus MCAL_USART_GetFlagState(u8 cpy_u8Flag);



#endif
/************************************* End of File ******************************************/