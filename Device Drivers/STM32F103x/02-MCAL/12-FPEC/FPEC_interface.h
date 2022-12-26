/**
* @file FPEC_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-12-26
*
*/
#ifndef FPEC_INTERFACE_H 
#define FPEC_INTERFACE_H 





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
 * @brief This Function is used to init FPEC Driver Module 
 * 
 */
void FPEC_voidInit(void);
/**
 * @brief This Function is used to Erase piece of code from page number @ref Copy_u8StartFromPageNumber to the end of the flash 
 * 
 * @param Copy_u8StartFromPageNumber Page number to start earase from it.
 */
void FPEC_voidEraseAppArea(u8 Copy_u8StartFromPageNumber);

/**
 * @brief This Function is used to erase specific page in flash.
 * 
 * @param Copy_u8PageNumber pageNumber 
 */
void FPEC_voidFlashPageErase(u8 Copy_u8PageNumber);

/**
 * @brief This Function is used to Write data on specific address with specific length. 
 * 
 * @param Copy_u32Address address of location to be written.
 * @param Ptr_u16Data    data to be written 
 * @param Copy_u8Length   length of data 
 */
void FPEC_voidFlashWrite(u32 Copy_u32Address, u16* Ptr_u16Data, u8 Copy_u8Length);


/**
 * @brief This Function is used to Write data on specific address. 
 * 
 * @param Copy_u32Address address of location to be written.
 * @param Copy_u16Data data to be written
 */
void FPEC_voidFlashWriteHalfWord(u32 Copy_u32Address, u16 Copy_u16Data);


#endif
/************************************* End of File ******************************************/