/**
* @file TWI_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-29
*
*/
#ifndef TWI_INTERFACE_H 
#define TWI_INTERFACE_H 
#include "TWI_Config.h"




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
 * @brief This Function used to initalize TWI Mdule 
 * 
 * @param ptr_TWI_Config  pointer to config struct   
 * @return TWI_Errors @ref TWI_Config.h
 * 
 *                 MASTER / SLAVE
 */
TWI_Errors MCAL_TWI_Init(TWI_Config* ptr_TWI_Config);

/**
 * @brief Send START condition
 * 
 * @param void
 * @return TWI_Errors @ref TWI_Config.h 
 * 
 *                MASTER ONLY
 */
TWI_Errors MCAL_TWI_StartCondition(void);

/**
 * @brief Send Slave address Write Operation. 
 * 
 * @param copy_u8SlaveAddress 7bit address + 0/1 for write read operation
 * @return TWI_Errors @ref TWI_Config.h 
 * 
 *                MASTER ONLY
 */
TWI_Errors MCAL_TWI_SlaveAddress(u8 copy_u8SlaveAddress) ; 

/**
 * @brief This function used to send repeated start 
 * 
 * @param copy_u8SlaveAddress 
 * @return TWI_Errors @ref TWI_Config.h 
 * 
 *                MASTER ONLY
 *                
 */
TWI_Errors MCAL_TWI_RepeatedStart(u8 copy_u8SlaveAddress);

/**
 * @brief This Function Used to transmit data from Master --> Slave or from Slave --> Master 
 * 
 * @param copy_u8Data Data to be transmitted.
 * @return TWI_Errors @ref TWI_Config.h 
 *                  MASTER / SLAVE
 */
TWI_Errors MCAL_TWI_Write(u8 copy_u8Data) ; 


/**
 * @brief This Function Used to receive data from Master <-- Slave or from Slave <-- Master 
 * 
 * @param ptr_u8Data pointer to data to be Received.
 * @param ack_state Read With ACK or read with NACK.
 *
 * @return TWI_Errors @ref TWI_Config.h 
 *                  MASTER / SLAVE
 */
TWI_Errors MCAL_TWI_Read(u8* ptr_u8Data, ReadWith ack_state) ; 

/**
 * @brief Send STOP condition
 * 
 * @param void
 * @return TWI_Errors @ref TWI_Config.h 
 *                MASTER ONLY
 * 
 */
TWI_Errors MCAL_TWI_StopCondition(void) ; 



/**
 * @brief This Function Used to transmit data Master Transmit Slave Receive (MTSR)
 * 
 * @param copy_u8SlaveAddress       7-bit of slave address 
 * @param copy_u8Data               copy_u8Data Data to be transmitted.
 * @return TWI_Errors @ref TWI_Config.h 
 * 
 *                MASTER ONLY
 * 
 */
TWI_Errors MCAL_TWI_SendDataAuto(u8 copy_u8SlaveAddress , u8 copy_u8Data) ; 

/**
 * @brief This Function Used to rececive data Master Recevive Slave Transmit (MRST)
 * 
 * @param copy_u8SlaveAddress 7-bit of slave address 
 * @param ptr_u8Data          Pointer to data to be Recieved.
 * 
 * @return TWI_Errors @ref TWI_Config.h  
 * 
 *                MASTER ONLY
 * 
 * 
 */
TWI_Errors MCAL_TWI_ReceiveDataAuto(u8 copy_u8SlaveAddress , u8 *ptr_u8Data) ; 

/**
 * @brief This Function Used to Match slave address.
 *
 * @param mode match address with read (SLA_R) or write (SLA_w) 
 * @return TWI_Errors @ref TWI_Config.h   
 * 
 *                  SLAVE ONLY
 *                
 * 
 */
TWI_Errors MCAL_TWI_SlaveAddressMatch(addressingMode mode);
/**
 * @brief This Function Used to receive data untill master send stop condition.
 *
 * @param ptr_callbck          Pointer to function executed when a byte of data received. 
 * @return TWI_Errors @ref TWI_Config.h   
 *                  SLAVE ONLY
 */
TWI_Errors MCAL_TWI_ReceiveUntillStop(void (*ptr_callbck)(u8 copy_callbackData));


#endif
/************************************* End of File ******************************************/