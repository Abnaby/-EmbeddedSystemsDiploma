/**
* @file ATMEGA_EEPROM_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-11
*
*/
#ifndef ATMEGA_EEPROM_INTERFACE_H 
#define ATMEGA_EEPROM_INTERFACE_H 





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

typedef enum
{
    EEPROM_N_OK ,
    EEPROM_OK 
}EEPROM_errorState ; 


/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief Used to init EEPROM
 * 
 * @param void 
 * @return EEPROM_errorState @ref EEPROM_errorState
 */
EEPROM_errorState intEPPROM_Init(void);

/**
 * @brief Read one byte from EEPROM address
 * 
 * @param copy_u16Address address of EPPROM between 0 and 511
 * @param copy_u8Data pointer to received data from EEPROM
 * 
 * @return EEPROM_errorState @ref EEPROM_errorState
 * 
 */
EEPROM_errorState intEPPROM_ReadByte(u16 copy_u16Address, u8 *copy_u8Data); 


/**
 * @brief Write one byte in EEPROM address
 * 
 * @param copy_u16Address address of EPPROM between 0 and 511
 * @param copy_u8Data data will store in EEPROM
 * 
 * @return EEPROM_errorState @ref EEPROM_errorState
 * 
 */
EEPROM_errorState intEPPROM_WriteByte(u16 copy_u16Address, u8 copy_u8Data);

/**
 * @brief Read two byte from EEPROM address
 * 
 * @param copy_u16Address address of EPPROM between 0 and 511
 * @param copy_u8Data pointer to received data from EEPROM
 * @return EEPROM_errorState @ref EEPROM_errorState
 */
EEPROM_errorState intEPPROM_ReadWord(u16 copy_u16Address, u16 *ptr_u16Data);

/**
 * @brief Write two byte in EEPROM address
 * 
 * @param copy_u16Address address of EPPROM between 0 and 511
 * @param copy_u16Data data will store in EEPROM
 * 
 * @return EEPROM_errorState @ref EEPROM_errorState
 * 
 */
EEPROM_errorState intEPPROM_WriteWord(u16 copy_u16Address, u16 copy_u16Data);


/**
 * @brief Read four byte from EEPROM address
 * 
 * @param copy_u16Address address of EPPROM between 0 and 511
 * @param ptr_u32Data pointer to received data from EEPROM
 * @return EEPROM_errorState @ref EEPROM_errorState
 */
EEPROM_errorState intEPPROM_ReadDword(u16 copy_u16Address, u32 *ptr_u32Data);

/**
 * @brief Write four byte in EEPROM address
 * 
 * @param copy_u16Address address of EPPROM between 0 and 511
 * @param copy_u32Data data will store in EEPROM
 * 
 * @return EEPROM_errorState @ref EEPROM_errorState
 * 
 */
EEPROM_errorState intEPPROM_WriteDword(u16 copy_u16Address, u32 copy_u32Data);


/**
 * @brief Read Number of Bytes from EEPROM
 * 
 * @param copy_u16StartAddress start reading from this address 
 * @param copyNumberOfByte number of byte to read it.
 * @param ptr_u8Data       point to 1D Array holds bytes of data 
 * @return EEPROM_errorState EEPROM_errorState @ref EEPROM_errorState
 */
EEPROM_errorState intEPPROM_ReadBlock(u16 copy_u16StartAddress, u16 copyNumberOfByte ,u8 *ptr_u8Data);


/**
 * @brief Write Number of Bytes to EEPROM
 * 
 * @param copy_u16StartAddress start writing from this address 
 * @param copyNumberOfByte number of byte to write it.
 * @param ptr_u8Data       point to 1D Array holds bytes of data 
 * @return EEPROM_errorState EEPROM_errorState @ref EEPROM_errorState
 */
EEPROM_errorState intEPPROM_WriteBlock(u16 copy_u16StartAddress, u16 copyNumberOfByte ,u8 *ptr_u8Data);

/**
 * @brief Update one byte in EEPROM address
 * 
 * @param copy_u16Address address of EPPROM between 0 and 511
 * @param copy_u8Data data will store in EEPROM
 * 
 * @return EEPROM_errorState @ref EEPROM_errorState
 * 
 */
EEPROM_errorState intEPPROM_UpdateByte(u16 copy_u16Address, u8 copy_u8Data);

#endif
/************************************* End of File ******************************************/