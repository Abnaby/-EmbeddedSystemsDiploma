/**
* @file OS_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-05
*
*/
#ifndef OS_INTERFACE_H 
#define OS_INTERFACE_H 





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
 * @brief This fcn is used to start os 
 * 
 */
void RTOS_voidStart( void );

/**
 * @brief This fcn is used to create new taske
 * 
 * @param Copy_u8ID             lower index has higher priority
 * @param Copy_u16Periodicity   Periodic time of task 
 * @param Copy_pvTask           pointer to fcn that hold task 
 * @param Copy_u16FirstDelay    start from 0+Copy_u16FirstDelay 
 */
void RTOS_voidCreateTask( u8 Copy_u8ID , u16 Copy_u16Periodicity , void (*Copy_pvTask)( void ) , u16 Copy_u16FirstDelay );

/**
 * @brief This fcn is used to Suspend task
 * 
 * @param Copy_u8TaskID task id
 */
void RTOS_voidSuspendTask ( u8 Copy_u8TaskID );
/**
 * @brief This fcn is used to Resume task
 * 
 * @param Copy_u8TaskID task id
 */
void RTOS_voidResumeTask  ( u8 Copy_u8TaskID );
/**
 * @brief This fcn is used to Delete task
 * 
 * @param Copy_u8TaskID task id
 */
void RTOS_voidKillTask  ( u8 Copy_u8TaskID );


#endif
/************************************* End of File ******************************************/