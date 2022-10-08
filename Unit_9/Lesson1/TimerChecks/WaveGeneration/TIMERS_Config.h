/**
* @file TIMERS_Config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-05
*
*/
#ifndef TIMERS_CONFIG_H 
#define TIMERS_CONFIG_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/


/**
 * @brief This enum holds available timer0 modes
 * 
 */
typedef enum
{
    TIM0_Normal_Mode =0x00 ,       // (WGM01:0 = 0) , n this mode the counting direction is always up (incrementing),  no counter clear is performed
                                   // Overflow Flag (TOV0) will be set in the same timer clock cycle as the TCNT0 becomes zero
                                   // The output compare unit can be used to generate interrupts at some given time. 
                                   // Using the output compare to generate waveforms in Normal mode is not recommended, since this will occupy too much of the CPU time

    TIM0_CTC_Mode = 0x08            // Clear Timer on Compare or CTC mode (WGM01:0 = 2)
                                    // CTC mode the counter is cleared to zero when the counter value (TCNT0) matches the OCR0
                                    // The counter value (TCNT0) increases until a compare match occurs between TCNT0 and OCR0, and then counter (TCNT0) is cleared.
                                    //  interrupt can be generated each time the counter value reaches the TOP value by using the OCF0 Flag. If the interrupt is enabled
                                    // the interrupt handler routine can be used for updating the TOP value
                                    // If the new value written to OCR0 is lower than the current value of TCNT0, the counter will miss the compare match.
                                    // the OC0 output can be set to toggle its logical level on each compare match by setting the Compare Output mode bits to toggle mode (COM01:0 = 1). 
                                    // The OC0 value will not be visible on the port pin unless the data direction for the pin is set to output.
}TIM0_OpMode;




/**
 * @brief This enum used to select mode of OC0 Pin
 * @details The function of the TIM0_CompOutput depends on the Timer0OpMode setting. (Non-PWM Mode)
 *          The OC0 output overrides the normal port functionality of the I/O pin it is connected to.
 *          The Data Direction Register (DDR) bit corresponding to the OC0 pin must be set in order to enable the output driver
 */
typedef enum
{
    TIM0_OC0_NOT_CONNECTED = 0x00 ,
    TIM0_OC0_TOGGLE        = 0x10 ,
    TIM0_OC0_CLEAR         = 0x20 ,
    TIM0_OC0_SET           = 0x30
}TIM0_CompereOutputPin;


/**
 * @brief This enum used to select clock source with prescaler 
 * @details If external pin modes are used for the Timer/Counter0, transitions on the T0 pin will clock the counter even if the pin is configured as an output. This feature allows software control of the counting.
 * 
 */
typedef enum
{
    TIMER_DISABLE                    ,
    TIMER_CLK_OVR_1                  ,
    TIMER_CLK_OVR_8                  ,
    TIMER_CLK_OVR_64                 ,
    TIMER_CLK_OVR_256                ,
    TIMER_CLK_OVR_1024               ,
    TIMER_CLK_FROM_T0_FALLING        ,
    TIMER_CLK_FROM_T0_RAISING
}TIM_ClockSelect;

/**
 * @brief This Enum used to EN/Disable Overflow Interrupt
 * 
 */
typedef enum
{
    TIM_OV_DISABLE ,
    TIM_OV_ENABLE  
}TIM_OverflowInterrupt ; 

/**
 * @brief This Enum used to EN/Disable Overflow Interrupt
 * 
 */
typedef enum
{
    TIM_OCM_DISABLE ,
    TIM_OCM_ENABLE 
}TIM_CompareMatchInterrupt ; 

/**
 * @brief This Enum used to Select Timer Module 
 * 
 */

typedef enum
{
    TIMER0 , 
    TIMER1 , 
    TIMER2 

}TimerSelection_t ;




/**
 * @brief This struct holds configuration parameters of Timer0
 * 
 */
typedef struct
{
    TIM0_OpMode                      operationModeTIM0 ;                            // select from @ref TIM0_OpMode enum 
    TIM_ClockSelect                  clockSourceAndPrescalerTimer0 ;                // select from @ref TIM_ClockSelect enum 
}Timer0Config_t;



/******************************************************************************
* Configuration Constants
*******************************************************************************/


#endif
/************************************* End of File ******************************************/