/**
* @file FPEC_config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-12-26
*
*/
#ifndef FPEC_CONFIG_H 
#define FPEC_CONFIG_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* User Configuration
*******************************************************************************/

/**
 * @brief This Macro is used to define the size of flash memory 
 * 
 */
#define FLASH_SIZE_IN_K     64

/**
 * @brief This Macro is used to define the page size of flash 
 * 
 */
#define PAGE_SIZE_IN_K      1

/**
 * @brief This Macro is used to define Base Address of Flash Memory 
 * 
 */
#define FLASH_START_ADDRESS     0x08000000



#endif
/************************************* End of File ******************************************/