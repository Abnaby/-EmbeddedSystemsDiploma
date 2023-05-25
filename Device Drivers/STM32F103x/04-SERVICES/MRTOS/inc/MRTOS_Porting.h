/**
* @file MRTOS_Porting.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief this file consist of some of APIs that controls and hold CPU registers
* @version 0.1
* @date 2023-05-01
*
*/


#ifndef INC_MRTOS_PORTING_H_
#define INC_MRTOS_PORTING_H_



/******************************************************************************
* Includes
*******************************************************************************/

#include "../Inc/SCB_interface.h"			// For Trig PendSV
#include "../Inc/PSRC_interface.h"			// Include Processor Libraries




/******************************************************************************
* User Preprocessor Options
 *******************************************************************************/
/**
 * @brief Choose one of 
 *                      CORTEX_M3 
 *                      CORTEX_M4 
 *                      
 */
#define __CPU__     CORTEX_M3

/**
 * @brief Write down maximum number of tasks
 *
 */
#define MAX_NUM_OF_TASKS	6

/**
 * @brief This Macro is used to define the tick time in microsecond 
 * 
 */
#define TICK_TIME 1000


/******************************************************************************
*  Preprocessor Constants
 *******************************************************************************/

/**
 * @brief This Macro is used to inline function 
 * 
 */
# define FORCE_INLINE __attribute__((always_inline)) inline
/******************************************************************************
* Variables
*******************************************************************************/

/**
 * @brief This Symbol is defined for the top of stack defined by linkerscript (.ld) File
 * 
 */
extern int _estack ;
/**
 * @brief This Symbol is defined for the top of heap defined by linkerscript (.ld) File
 * 
 */
extern int _eheap  ;

#define MainStackSize 	3072

#define PEND_SV_HANDLER_NAME	PendSV_Handler


/******************************************************************************
* Typedefs
*******************************************************************************/

/******************************************************************************
* Function Prototypes
*******************************************************************************/

 void MRTOS_voidHardwareInit(void);

void MRTOS_voidCallService(u8 copy_u8ServiceID);

 void MRTOS_voidStartTicker(void (*callBack)(void));


/******************************************************************************
* Configuration Constants
*******************************************************************************/


#endif /* INC_MRTOS_PORTING_H_ */
