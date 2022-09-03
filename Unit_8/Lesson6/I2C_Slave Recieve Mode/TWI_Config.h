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

typedef struct 
{
    TWI_Mode           TWI_MODE_SELECT        ;
    TWI_SPD_Mode       TWI_SPD                ; //  Not Important for slave mode

    
}TWI_Config;

/******************************************************************************
* Configuration Constants
*******************************************************************************/
typedef enum
{
    NO_ERROR                   ,
    ERROR_SLCT_VALID_MODE      ,
    ERROR_START_CONDITION_FAIL , 
    ACK_RECEIVED               ,
    NACK_RECEIVED              ,
    SLA_W_FAILD                ,
    ERROR_ISSUED_BY_MSTR_ONLY  ,
    ERROR_ISSUED_BY_SLVE_ONLY  ,
    ERROR_RESTART_CONDITION_FAIL, 
    ERROR_DTA_TX_FAIL           ,
    ERROR_UNDEFINED         
    
    
    
}TWI_Errors; 



typedef enum
{
    READ_MODE   ,   
    WRITE_MODE
}TWI_Opertion; 
#endif
/************************************* End of File ******************************************/