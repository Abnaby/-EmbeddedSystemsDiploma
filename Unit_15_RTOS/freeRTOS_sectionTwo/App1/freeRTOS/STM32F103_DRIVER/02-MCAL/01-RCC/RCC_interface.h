/**
* @file RCC_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-25
*
*/
#ifndef RCC_INTERFACE_H 
#define RCC_INTERFACE_H 





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
    RCC_AHB ,
    RCC_APB1 ,
    RCC_APB2
}Bus_t ;



/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This function is used to enable the clock for the chosen perpheral 
 * 
 * @param Copy_BusId is the Bus type
 * @param Copy_u8BperId is the peripheral number 
 */
void RCC_voidEnableClock(Bus_t Copy_BusId, u8 Copy_u8BperId) ;

/**
 * @brief This function is used to disable the clock for the chosen perpheral 
 * 
 * @param Copy_BusId is the Bus type
 * @param Copy_u8BperId is the peripheral number 
 */
void RCC_voidDisableClock(Bus_t Copy_BusId, u8 Copy_u8BperId) ;


/**
 * @brief This Function is used to init CPU Clock / AHB Bus Clock / ABP1/2 Clock
 * 
 */
void RCC_voidInitSysClocks(void);




#endif
/************************************* End of File ******************************************/
