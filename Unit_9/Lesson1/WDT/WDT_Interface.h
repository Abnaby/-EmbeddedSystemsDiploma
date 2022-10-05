/**
* @file WDT_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-05
*
*/
#ifndef WDT_INTERFACE_H 
#define WDT_INTERFACE_H 

#include "WDT_Config.h"


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
 * @brief This Function Used to Start counter of Watchdog Timer
 * 
 * @param selectPredefinedTimeOut select from @ref WDT_timeOut at WDT_Config.h
 * @return void
 */
void WDT_voidStart(WDT_timeOut selectPredefinedTimeOut);

/**
 * @brief This Function Used to Stop Watchdog Timer
 * @param void 
 * @return void 
 * 
 */
void WDT_voidStop(void);





#endif
/************************************* End of File ******************************************/