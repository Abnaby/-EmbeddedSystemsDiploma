/**
* @file TWI_Config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-29
*
*/
#ifndef TWI_CONFIG_H 
#define TWI_CONFIG_H 





/******************************************************************************
* Includes
*******************************************************************************/



/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/

/**
 * @brief This Macro Used to set slave address of slave 
 *          7-bit address from 0b0000001 to 0b1111111 
 *          This Used only if TWI used as Slave but has no meaning if use TWI as a Master.
 *  
 * 
 */
#define SLAVE_ADDRESS_IF_USED   16 

/******************************************************************************
* Typedefs
*******************************************************************************/
/**
 * @brief This enum refere to select TWI operation mode.
 * 
 */
typedef enum
{
    MASTER,
    SLAVE
}TWI_Mode;

/**
 * @brief This enum refere to select TWI Speed
 * 
 */
typedef enum 
{

    NORMAL_MODE         ,           //  100kHz. 
    FAST_MODE           ,           //  400kHz 
}TWI_SPD_Mode;

/**
 * @brief This Enum used to determine Master Read With Ack  or Read with NACK bit
 * 
 */
typedef enum
{
    READ_WITH_ACK ,     
    READ_WITH_NACK  
    
}ReadWith; 

/**
 * @brief This Enum used to Match addrees in case of Slave Address + Read or Slave Address + Write 
 * 
 */
typedef enum
{
	SLA_R	,               //  Slave Address + Read
	SLA_W                   //  Slave Address + Write
}addressingMode; 

/**
 * @brief This is TWI configure struct
 * 
 */
typedef struct 
{
    TWI_Mode           TWI_MODE_SELECT        ;
    TWI_SPD_Mode       TWI_SPD                ; //  Not Important for slave mode

    
}TWI_Config;
/******************************************************************************
* Configuration Constants
*******************************************************************************/

/**
 * @brief This enum used as Possibale return values from Functions 
 * 
 */
typedef enum
{
    NO_ERROR                   ,            //  No Error Happen 
    ERROR_SLCT_VALID_MODE      ,            //  This Value must be from TWI_Mode typedef enum
    ERROR_START_CONDITION_FAIL ,            //  Fail To Initiate Start Condition 
    ACK_RECEIVED               ,            //  ACK Received 
    NACK_RECEIVED              ,            //  NACK Received 
    SLA_W_FAILD                ,            // SLA+Write Fail 
    ERROR_ISSUED_BY_MSTR_ONLY  ,            // This Function used when TWI Init as a Master
    ERROR_ISSUED_BY_SLVE_ONLY  ,            // This Function used when TWI Init as a Slave
    ERROR_RESTART_CONDITION_FAIL,           // This Function used when Repeated Start Fail
    ERROR_DTA_TX_FAIL           ,           // Used when can't Transmit data 
    ERROR_UNDEFINED                         // Undefined Behaviour 
}TWI_Errors; 

 
#endif
/************************************* End of File ******************************************/