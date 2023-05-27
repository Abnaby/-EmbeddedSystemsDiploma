/**
* @file NVIC_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-27
*
*/
#ifndef NVIC_INTERFACE_H 
#define NVIC_INTERFACE_H 





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
    INT_NOT_ACTIVE  = 0 ,
    INT_ACTIVE
}activeFlagState_t; 



/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/


/**
 * @brief This Function is used to Enable Interrupt On external Peripheral 
 * 
 * @param Copy_u8IntNumber Number of Peripheral Based on Vector Table 
 */
void NVIC_voidEnableInterrupt  ( u8 Copy_u8IntNumber ) ;

/**
 * @brief This Function is used to Disable Interrupt On external Peripheral 
 * 
 * @param Copy_u8IntNumber Number of Peripheral Based on Vector Table 
 */
void NVIC_voidDisableInterrupt ( u8 Copy_u8IntNumber ) ; 

/**
 * @brief This Function is used to Set Pendding Interrupt Flag for external Peripheral 
 * 
 * @param Copy_u8IntNumber Number of Peripheral Based on Vector Table 
 */
void NVIC_voidSetPenddingFlag  ( u8 Copy_u8IntNumber ) ; 
/**
 * @brief This Function is used to Clear Pendding Interrupt Flag for external Peripheral 
 * 
 * @param Copy_u8IntNumber Number of Peripheral Based on Vector Table 
 */
void NVIC_voidClearPenddingFlag( u8 Copy_u8IntNumber ) ; 


/**
 * @brief This Function is used to Get Value of Active Flag
 * 
 * @param Copy_u8IntNumber Number of Peripheral Based on Vector Table 
 * @return activeFlagState_t 
 */
activeFlagState_t NVIC_u8GetInterruptStatus ( u8 Copy_u8IntNumber );


/**
 * @brief This Function is Used to Set Group/SubGroup Priority for External Interrupts
 * 
 * @param Copy_u8IntNumber          Number of Peripheral Based on Vector Table 
 * @param Copy_u8GroupPripority     Set Group Priority form 0:16 based of @ref SCB_voidSetPriorityGrouping function @ref SCB_interface.h
 * @param Copy_u8SubGroupPripority  Set Sub Group Priority form 0:16 based of @ref SCB_voidSetPriorityGrouping function @ref SCB_interface.h
 */
void NVIC_voidSetIRQ_PriorityGrouping (u8 Copy_u8IntNumber , u8 Copy_u8GroupPripority, u8 Copy_u8SubGroupPripority);

#endif
/************************************* End of File ******************************************/
