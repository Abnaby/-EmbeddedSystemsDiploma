/**
* @file STK_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-30
*
*/
#ifndef STK_INTERFACE_H 
#define STK_INTERFACE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/


#define STK_AHB_OVER_8  0x00000000
#define STK_AHB         0x00000004

/******************************************************************************
* Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/
typedef void (*ptr_SystickFunc) (void) ; 



/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief   This function is used to init systick module 
 * 
 */
void STK_voidInit(void) ;

/**
 * @brief This Synchronous Function is used to make delay with number of ticks
 * 
 * @param Copy_u32TicksNumber number of ticks
 */
void STK_voidSetBusyWait(u32 Copy_u32TicksNumber) ;

/**
 * @brief Synchronous Function Delay
 * 
 * @param Copy_u16TimeMS Time In Millisecond
 */
void STK_voidSetBusyWait_MS(u16 Copy_u16TimeMS) ;

/**
 * @brief Synchronous Function Delay
 * 
 * @param Copy_u16TimeUS Time In Microsecond
 */
void STK_voidSetBusyWait_US(u16 Copy_u16TimeUS) ;

/**
 * @brief       Single Asynchronous Function 
				Just Finish it will make interrupt
 * 
 * @param Copy_u32TicksNumber Number of Ticks
 * @param ptr_toFunc    Pointer to Interrupt Function execute when happen Interrupt
 */
void STK_voidSetIntervalSingle(u32 Copy_u32TicksNumber , ptr_SystickFunc ptr_toFunc) ;

/**
 * @brief       Single Asynchronous Function 
				Just Finish it will make interrupt
 * 
 * @param Copy_u16TimeMS Time In Millisecond
 * @param ptr_toFunc    Pointer to Interrupt Function execute when happen Interrupt
 */
void STK_voidSetIntervalSingle_MS(u16 Copy_u16TimeMS , ptr_SystickFunc ptr_toFunc) ;


/**
 * @brief       Single Asynchronous Function 
				Just Finish it will make interrupt
 * 
 * @param Copy_u16TimeUS Time In Microsecond
 * @param ptr_toFunc    Pointer to Interrupt Function execute when happen Interrupt
 */
void STK_voidSetIntervalSingle_US(u16 Copy_u16TimeUS , ptr_SystickFunc ptr_toFunc) ;

/**
 * @brief       Periodic Asynchronous Function 
				Just Finish it will make interrupt
 * 
 * @param Copy_u32TicksNumber Number of Ticks
 * @param ptr_toFunc    Pointer to Interrupt Function execute when happen Interrupt
 */
void STK_voidSetIntervalPeriodic(u32 Copy_u32TicksNumber , ptr_SystickFunc ptr_toFunc) ;


/**
 * @brief       Periodic Asynchronous Function 
				Just Finish it will make interrupt
 * 
 * @param Copy_u16TimeMS Time In Millisecond
 * @param ptr_toFunc    Pointer to Interrupt Function execute when happen Interrupt
 */
void STK_voidSetIntervalPeriodic_MS(u16 Copy_u16TimeMS , ptr_SystickFunc ptr_toFunc) ;

/**
 * @brief       Periodic Asynchronous Function 
				Just Finish it will make interrupt
 * 
 * @param Copy_u16TimeUS Time In Microsecond
 * @param ptr_toFunc    Pointer to Interrupt Function execute when happen Interrupt
 */
void STK_voidSetIntervalPeriodic_US(u16 Copy_u16TimeUS , ptr_SystickFunc ptr_toFunc) ;


/**
 * @brief Get Number Of Successfully Ticks 
 * 
 * @return u32 How many ticks done
 */
u32 STK_u32GetElapsedTicks(void) ;

/**
 * @brief Get Elapsed Time 
 * 
 * @return u32 Elapsed Time in Milliscond 
 */
u32 STK_u32GetElapsedTime_MS(void) ;

/**
 * @brief Get Elapsed Time
 * 
 * @return u32 Elapsed Time in Microscond
 */
u32 STK_u32GetElapsedTime_US(void) ;

/**
 * @brief Get Remaning Ticks
 * 
 * @return u32 Number Of Remaning Ticks
 */

u32 STK_u32GetRemainingTicks(void) ;
/**
 * @brief Get Remaning Time
 * 
 * @return u32 Remaning Time in Millisecond
 */
u32 STK_u32GetRemainingTime_MS(void) ;

/**
 * @brief Get Remaning Time
 * 
 * @return u32 Remaning Time in Microsecond
 */
u32 STK_u32GetRemainingTime_US(void) ;



#endif
/************************************* End of File ******************************************/
