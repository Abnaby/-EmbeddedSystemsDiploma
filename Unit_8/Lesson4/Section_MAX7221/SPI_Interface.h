/**
* @file SPI_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-23
*
*/
#ifndef SPI_INTERFACE_H 
#define SPI_INTERFACE_H 





/******************************************************************************
* Includes
*******************************************************************************/
#include "SPI_Config.h"



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
 * @brief This Function Used to initialize SPI Moude from SPI_Config struct.
 * @pre 
 * @param ptr_SPI_Config pointer to user-defined configuration.
 * @return void 
 */
void MCAL_SPI_voidInit(SPI_Config* ptr_SPI_Config); 



/**
 * @brief This Function Used to Exchange data between Master and Slave Asynchronously.
 * 
 * @param cpy_u8DataToBeTransmit data to be transmitted
 * @param ptr_dataToBeReceived   pointer to u8 variable to received incomming data.
 */
void MCAL_SPI_voidByteExchangeAsynch(u8 cpy_u8DataToBeTransmit, u8* ptr_dataToBeReceived);

/**
 * @brief This Function Used to Send a byte of data through SPI Module Asynchronously.
 * 
 * @param cpy_u8Data data to be transmitted. 
 * @return void
 */
void MCAL_SPI_voidSendByteAsynch(u8 cpy_u8Data);

/**
 * @brief This Function is used to recieve a byte of data through SPI Module Asynchronously.
 * 
 * @param ptr_u8Data pointer to u8 variable.
 * @return void  
 */
void MCAL_SPI_voidReceiveByteAsynch(u8* ptr_u8Data);

/**
 * @brief This Function Used to Send a byte of data through SPI Module Synchronously.
 * 
 * @param cpy_u8Data data to be transmitted. 
 * @param Exchange_CallBack pointer to call back function.
 * @return void
 */
void MCAL_SPI_voidSendByteSynch(u8 cpy_u8Data , void(*Exchange_CallBack)(void));

/**
 * @brief This Function is used to recieve a byte of data through SPI Module Synchronously.
 * 
 * @param Exchange_CallBack pointer to call back function.
 * @return void  
 */
void MCAL_SPI_voidReceiveByteSynch(void(*Exchange_CallBack)(void));

/**
 * @brief This Function is used to Enable SPI Interrupt.
 * 
 * @param void
 * @return void
 */
void MCAL_SPI_voidEnableInterrupt(void); 

/**
 * @brief This Function is used to Disable SPI Interrupt.
 * 
 * @param void
 * @return void
 */
void MCAL_SPI_voidDisableInterrupt(void); 






#endif
/************************************* End of File ******************************************/