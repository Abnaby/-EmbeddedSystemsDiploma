/**
* @file SCB_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.2
* @date 2023-01-02
*/
#ifndef SCB_INTERFACE_H 
#define SCB_INTERFACE_H 





/******************************************************************************
* Includes
*******************************************************************************/
#include "COMMON.h"




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/
#define FORCE_INLINE __attribute__((always_inline)) inline



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
 * @brief This Function is used to set number of groups and sub groups as a priority
 * 
 * @param copy_selectGroupingSettings select one of @ref PriorityGrouping_t 
 * @return void
 */
void SCB_voidSetPriorityGrouping(PriorityGrouping_t  copy_selectGroupingSettings);

/**
 * @brief This Function is used to make offset on vector table
 * 
 * @param P_STARTUP passing pointer to startup code address 
 */
void SCB_voidOffesetVectorTable(u32 *PTR_STARTUP);

/**
 * @brief This Function is used to jump on application
 * 
 * @param P_APP pointer to application layer 
 */
void SCB_voidJumptoApp(void(* P_APP)(void));


void SCB_voidTrigPendSV(void);

#endif
/************************************* End of File ******************************************/
