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
typedef enum
{
    READ_WITH_ACK ,
    READ_WITH_NACK  
    
}ReadWith; 

typedef enum
{
	SLA_R	,
	SLA_W
}addressingMode; 



/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This Function used to initalize TWI Mdule 
 * 
 * @param ptr_TWI_Config 
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_Init(TWI_Config* ptr_TWI_Config);

/**
 * @brief Send START condition
 * @param void
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_StartCondition(void);

/**
 * @brief Send Slave address Write Operation. 
 * 
 * @param copy_u8SlaveAddress 
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_SlaveAddress(u8 copy_u8SlaveAddress) ; 

/**
 * @brief 
 * 
 * @param copy_u8SlaveAddress 
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_RepeatedStart(u8 copy_u8SlaveAddress);

/**
 * @brief This Function Used to transmit data from Master --> Slave or from Slave --> Master 
 * 
 * @param copy_u8Data Data to be transmitted.
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_Write(u8 copy_u8Data) ; 


/**
 * @brief This Function Used to receive data from Master <-- Slave or from Slave <-- Master 
 * 
 * @param ptr_u8Data pointer to data to be Received.
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_Read(u8* ptr_u8Data, ReadWith ack_state) ; 

/**
 * @brief Send STOP condition
 * 
 * @param void
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_StopCondition(void) ; 

/**
 * @brief This Function Used to transmit data from Master --> Slave or from Slave --> Master 
 * 
 * @param copy_u8Data Data to be transmitted.
 * @return TWI_Errors 
 */

/**
 * @brief This Function Used to transmit data Master Transmit Slave Receive (MTSR)
 * 
 * @param copy_u8SlaveAddress       7-bit of slave address 
 * @param copy_u8Data               copy_u8Data Data to be transmitted.
 * @return TWI_Errors 
 */
TWI_Errors MCAL_TWI_SendDataAuto(u8 copy_u8SlaveAddress , u8 copy_u8Data) ; 

/**
 * @brief This Function Used to rececive data Master Recevive Slave Transmit (MRST)
 * 
 * @param copy_u8SlaveAddress 7-bit of slave address 
 * @param ptr_u8Data          Pointer to data to be transmitted.
 * 
 * @return TWI_Errors  
 */
TWI_Errors MCAL_TWI_ReceiveDataAuto(u8 copy_u8SlaveAddress , u8 *ptr_u8Data) ; 

/**
 * @brief This Function Used to Match slave address.
 *
 * @param void 
 * @return TWI_Errors   
 */
TWI_Errors MCAL_TWI_SlaveAddressMatch(addressingMode mode);
/**
 * @brief This Function Used to receive data untill master send stop condition.
 *
 * @param ptr_callbck          Pointer to function executed when a byte of data received. 
 * @return TWI_Errors   
 */
TWI_Errors MCAL_TWI_ReceiveUntillStop(void (*ptr_callbck)(u8 copy_callbackData));


#endif
/************************************* End of File ******************************************/