/**
* @file TIMERS_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-05
*
*/
#ifndef TIMERS_INTERFACE_H 
#define TIMERS_INTERFACE_H 
#include "TIMERS_Config.h"




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

typedef void(*ptr_VoidFcn)(void); 



/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/


/**
 * @brief This Function Used to Init Timer0 Only
 * 
 * @param ptr_userConfig pointer to struct that holds user configuration for timer0 
 */
void Timer_voidInitTimer0(Timer0Config_t *ptr_userConfig); 
/**
 * @brief This Function Used to Start Timer0 for counting 
 * 
 */
void Timer_voidStartTimer0(void); 
/**
 * @brief This Function Used to Stop Timer 0 from Counting and clear Counter
 * 
 */
void Timer_voidStopTimer0(void);

/**
 * @brief This function used to get number of ticks from when start timer. 
 * 
 * @param u8 *pu8GetTicks pointer to number of ticks 
 * @return void 
 */
void Timer_u8GetCounterTimer0(u8 *pu8GetTicks); 
/**
 * @brief This function used to set number of ticks to start count from it. 
 * @param u8 copy_u8SetTicks number of ticks will loaded into TCNT0 reg
 * @return void 
 */
void Timer_u8SetCounterTimer0(u8 copy_u8SetTicks); 


/**
 * @brief This Function Used to make synchronous timer delay in ms  
 * 
 * @param timerNum select from @ref TimerSelection_t enum 
 * @param Copy_u16DelayMs delay time in ms 
 */
void Timer_voidSetBusyWait_ms(TimerSelection_t timerNum , u16 Copy_u16DelayMs);
/**
 * @brief This Function Used to make timer delay Asynchronous in us  
 * 
 * @param timerNum select from @ref TimerSelection_t enum 
 * @param Copy_u16DelayUs Copy_u16DelayUs
 */
void Timer_voidSetBusyWait_us(TimerSelection_t timerNum, u16 Copy_u16DelayUs);

/**
 * @brief This Function Used to Set Callback fcn.   
 * 
 * @parm copyTimerIndex select from @ref TimerSelection_t enum
 * @param ovflowCallback pointer to fcn execute at overflow 
 */
void Timer_voidSetOverflowCallback(TimerSelection_t copyTimerIndex,ptr_VoidFcn ovflowCallback);
/**
 * @brief This Function Used to Enable/Disable Overflow Interupt.  
 *  
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 * @param copyTimerState select from @ref TIM_OverflowInterrupt enum 
 */
void Timer_voidSetOVInterrupState(TimerSelection_t copyTimerIndex , TIM_OverflowInterrupt copyTimerState);






/**
 * @brief This Function Used to Set MAX to @param copy_u16CompVal  
 * @details range from 0:255 in Timer0/2 
 *                     0 : 65535 in Timer1 
 *          The counter value (TCNT0) increases until a compare match occurs between TCNT0 and OCR0, and then counter (TCNT0) is cleared.
 * 
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 * @param copy_u16CompVal compare value 
 */
void Timer_voidSetCompareValue(TimerSelection_t copyTimerIndex , u16 copy_u16CompVal);

/**
 * @brief This Function Used to Set Callback fcn for compare match ISR.
 * 
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 * @param cmpMatchCallback pointer to fcn execute at compare match
 */
void Timer_voidSetCompareMatchCallback(TimerSelection_t copyTimerIndex , ptr_VoidFcn cmpMatchCallback); 

/**
 * @brief This Function Used to Enable/Disable Compare Match Interupt.  
 *  
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 * @param copyTimerState select from @ref TIM_CompareMatchInterrupt enum 
 */
void Timer_voidSetCompMatchInterrupState(TimerSelection_t copyTimerIndex , TIM_OverflowInterrupt copyTimerState);

/**
 * @brief This Function Used to Make Interval Once Asynchronously 
 * 
 * @param copyTimerIndex            select from @ref TimerSelection_t enum
 * @param Copy_u16IntervalTimeMS    Set time of Interval in milli second 
 * @param intervalCallback          pointer to callback function 
 * @return void
 */
void Timer_voidSetIntervalSingleMS(TimerSelection_t copyTimerIndex , u16 Copy_u16IntervalTimeMS , ptr_VoidFcn intervalCallback); 

/**
 * @brief This Function Used to Make Interval Periodic Asynchronously 
 * 
 * @param copyTimerIndex            select from @ref TimerSelection_t enum
 * @param Copy_u16IntervalTimeMS    Set time of Interval in milli second 
 * @param intervalCallback          pointer to callback function 
 * @return void
 */
void Timer_voidSetIntervalPeriodicMS(TimerSelection_t copyTimerIndex , u16 Copy_u16IntervalTimeMS , ptr_VoidFcn intervalCallback); 

#endif
/************************************* End of File ******************************************/