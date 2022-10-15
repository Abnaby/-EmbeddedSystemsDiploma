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
 * @brief This Function Used to Init Timer1 Only
 * 
 * @param ptr_userConfig pointer to struct that holds user configuration for timer1
 */
void Timer_voidInitTimer1(Timer1Config_t *ptr_userConfig); 


/**
 * @brief This Function Used to Init Timer2 Only
 * 
 * @param ptr_userConfig pointer to struct that holds user configuration for timer2
 */
void Timer_voidInitTimer2(Timer2Config_t *ptr_userConfig); 

/**
 * @brief This Function Used to Init Timer0 Only
 * 
 * @param ptr_userConfig pointer to struct that holds user configuration for timer0 
 */
void Timer_voidInitTimer0(Timer0Config_t *ptr_userConfig); 
/**
 * @brief This Function Used to Start Timer0 for counting 
 * 
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 */
void Timer_voidStartTimer(TimerSelection_t copyTimerIndex);
/**
 * @brief This Function Used to Stop Timers from Counting and clear Counter
 * 
* @param copyTimerIndex select from @ref TimerSelection_t enum
 */
void Timer_voidStopTimer(TimerSelection_t copyTimerIndex);
/**
 * @brief This function used to get number of ticks from when start timer. 
 * 
 * @param u8 *pu8GetTicks pointer to number of ticks 
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 * @return void 
 */
void Timer_u8GetCounterTimer(TimerSelection_t copyTimerIndex, u16 *pu8GetTicks); 
/**
 * @brief This function used to set number of ticks to start count from it. 
 * @param u8 copy_u8SetTicks number of ticks will loaded into TCNT0 reg
 * @return void 
 */
void Timer_u8SetCounterTimer(TimerSelection_t copyTimerIndex, u16 copy_u8SetTicks); 


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




/**
 * @brief This Function Used to Generate output at OCR0 Value
 * 
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 * @param copy_stateOfOCRPin select from @ref TIM0_CompereOutputPin enum
 */
void Timer_voidOutputPinMode(TimerSelection_t copyTimerIndex, TIM0_CompereOutputPin copy_stateOfOCRPin);


/**
 * @brief This Function used to generate square wave signal in KHZ with duty cycle.
 * 
 * @param copyTimerIndex select from @ref TimerSelection_t enum
 * @param copy_u8FreqInHz  frequency of signal in Hz
 * @param copy_u8DutyCycle  Dutycycle of signal 0 : 100 
 */
void Timer_voidGenerateSignal(TimerSelection_t copyTimerIndex , u8 copy_u8FreqInHz , u8 copy_u8DutyCycle) ; 

/**
 * @brief This Fuction Used To Get Ticks Between Two Events Synchronous
 * 
 * @param copyTimerIndex 
 * @param copy_u8Event 
 */
void Timer_voidInputCaptureTicksSynch(TimerSelection_t copyTimerIndex,  TIM1_EventCapturing copy_TriggerEvent , u16 *copyCounts );
/**
 * @brief This Fuction Used To Detect Event in Pin 
 * 
 * @param copyTimerIndex 
 * @param copy_u8Event 
 */
void Timer_voidInputCaptureInterrupt(TimerSelection_t copyTimerIndex,  TIM1_EventCapturing copy_TriggerEvent , ptr_VoidFcn setCallBackFn); 
/**
 * @brief This Fuction Used To get Flags status
 * @param copyTimerIndex 
 * @param copy_u8Event 
 */
void Timer_voidGetFlagsRegStatus(u8 * ptr_u8Reg); 
#endif
/************************************* End of File ******************************************/