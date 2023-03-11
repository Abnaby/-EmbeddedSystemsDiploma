/**
* @file PSRC_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief Processor Special Register Control
* @version 0.1
* @date 2023-03-09
*
*/
#ifndef PSRC_INTERFACE_H 
#define PSRC_INTERFACE_H 



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

/**
 * @brief This enum holds the possible access levels 
 * 
 */
typedef enum
{
    PSRC_PRIVILEGED_ACCESS, 
    PSRC_UNPRIVILEGED_ACCESS
}PSRC_AccessLevel_t ; 

/**
 * @brief This Enum Holds the possible return type for PSRC driver.
 * 
 */
typedef enum
{
    PSRC_UNSUCCESSFUL_OPER,
    PSRC_SUCCESSFUL_OPER
}PSRC_Return_t ; 

/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This function is used to switch from privileged access level to unprivileged access level or vice versa.
 * @details in case of current mode is privileged access so we can change the access level at any time to an unprivileged access level 
 *          in case of current mode is unprivileged access so we can change the access level only in handler mode(in IRQ).
 *          but if tried to switch access level it will make a hard-fault exception.
 * @note  all cases of this function working fine in privileged access level.
 * @param copy_AccessLevel select the access level form @ref PSRC_AccessLevel_t.
 * @param copy_u8HandleExceptions it will handle the wrong conversion between unprivileged access level to privileged access level
 *                                if 1 --> Handle it 
 *                                   0 --> User will Handle hard-fault exception.
 * @return PSRC_Return_t one of @ref PSRC_Return_t 
 */
PSRC_Return_t PSRC_voidSetAccessLevel(PSRC_AccessLevel_t copy_AccessLevel , u8    copy_u8HandleExceptions);



#endif
/************************************* End of File ******************************************/
