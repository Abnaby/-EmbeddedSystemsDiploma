/**
* @file ATMEGA_EEPROM_Private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-11
*
*/
#ifndef ATMEGA_EEPROM_PRIVATE_H 
#define ATMEGA_EEPROM_PRIVATE_H 





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

/*  The EEPROM data bytes are addressed linearly between 0 and 511  */
#define EEPRM_EEARH               *((volatile u8 *)0x3F)        // The EEPROM Address Register     8
#define EEPRM_EEARL               *((volatile u8 *)0x3E)        // The EEPROM Address Register      0 ---> 7
#define EEPRM_EEDR                *((volatile u8 *)0x3D)        // EEPROM Data
#define EEPRM_EECR                *((volatile u8 *)0x3C)        // The EEPROM Control Register
    #define EECR_EERIE  3                                       // EERIE: EEPROM Ready Interrupt Enable
    #define EECR_EEMWE  2                                       // EEMWE: EEPROM Master Write Enable
    #define EECR_EEWE   1                                       // Bit 1 – EEWE: EEPROM Write Enable
    #define EECR_EERE   0                                       // Bit 0 – EERE: EEPROM Read Enable

#define EEPRM_SPMCR                *((volatile u8 *)0x57)        // Store Program Memory Control Register
    #define SPMCR_SPMEN     0                                   // SPMEN: Store Program Memory Enable









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