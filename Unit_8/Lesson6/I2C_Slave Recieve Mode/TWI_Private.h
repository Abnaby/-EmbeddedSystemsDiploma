/**
* @file TWI_Private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-08-29
*
*/
#ifndef TWI_PRIVATE_H 
#define TWI_PRIVATE_H 





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

#define TWI_TWICR               *((volatile u8 *)0x56)
#define TWI_TWDR                *((volatile u8 *)0x23)
#define TWI_TWAR                *((volatile u8 *)0x22)
#define TWI_TWSR                *((volatile u8 *)0x21)
#define TWI_TWBR                *((volatile u8 *)0x20)


/*                            TWI_TWICR BITS                            */          
#define TWICR_TWINT             7
#define TWICR_TWEA              6
#define TWICR_TWSTA             5
#define TWICR_TWSTO             4
#define TWICR_TWWC              3
#define TWICR_TWEN              2
#define TWICR_RES               1
#define TWICR_TWIE              0
/*                             TWI_TWAR BITS                            */
#define TWAR_TWS7               7
#define TWAR_TWS6               6
#define TWAR_TWS5               5
#define TWAR_TWS4               4
#define TWAR_TWS3               3
#define TWAR_RES                2
#define TWAR_TWPS1              1
#define TWAR_TWPS0              0
/*                             TWI_TWBR BITS                            */
#define TWBR_TWS7               7
#define TWBR_TWS6               6
#define TWBR_TWS5               5
#define TWBR_TWS4               4
#define TWBR_TWS3               3
#define TWBR_RES                2
#define TWBR_TWS1               1
#define TWBR_TWS0               0



           



/******************************************************************************
* Typedefs
*******************************************************************************/



/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Private Function Prototypes
*******************************************************************************/




#endif
/************************************* End of File ******************************************/