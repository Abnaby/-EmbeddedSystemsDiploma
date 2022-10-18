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

/******************************************************************************
 ******************************** GENERAL *************************************
 ******************************************************************************/
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
 * @brief This enum holds available timers modes
 * 
 */
typedef enum
{
    TIM_Normal_Mode =0x00 ,       // Timer 0 Supoorted : (WGM01:0 = 0) , n this mode the counting direction is always up (incrementing),  no counter clear is performed


    TIM_CTC_Mode = 0x08   ,       // Timer 0 Supported : Clear Timer on Compare or CTC mode (WGM01:0 = 2)

    TIM_IC_Mode = 0x0            // Timer 1 Supported Only :


}TIM_OpMode;


/******************************************************************************
 ******************************** TIMER 0 *************************************
 ******************************************************************************/



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
    TIMER0_DISABLE                    ,
    TIMER0_CLK_OVR_1                  ,
    TIMER0_CLK_OVR_8                  ,
    TIMER0_CLK_OVR_64                 ,
    TIMER0_CLK_OVR_256                ,
    TIMER0_CLK_OVR_1024               ,
    TIMER0_CLK_FROM_T0_FALLING        ,
    TIMER0_CLK_FROM_T0_RAISING
}TIM0_ClockSelect;


/**
 * @brief This struct holds configuration parameters of Timer0
 * 
 */
typedef struct
{
    TIM_OpMode                      operationModeTIM0 ;                            // select from @ref TIM_OpMode enum 
    TIM0_ClockSelect                  clockSourceAndPrescalerTimer0 ;                // select from @ref TIM0_ClockSelect enum 
}Timer0Config_t;


/******************************************************************************
 ******************************** TIMER 1 *************************************
 ******************************************************************************/

/**
 * @brief This enum used to select clock source with prescaler 
 * @details If external pin modes are used for the Timer/Counter0, transitions on the T0 pin will clock the counter even if the pin is configured as an output. This feature allows software control of the counting.
 * 
 */
typedef enum
{
    TIMER1_DISABLE                    ,
    TIMER1_CLK_OVR_1                  ,
    TIMER1_CLK_OVR_8                  ,
    TIMER1_CLK_OVR_64                 ,
    TIMER1_CLK_OVR_256                ,
    TIMER1_CLK_OVR_1024               ,
    TIMER1_CLK_FROM_T0_FALLING        ,
    TIMER1_CLK_FROM_T0_RAISING
}TIM1_ClockSelect;

/**
 * @brief This enum used to select selects which edge on the Input Capture Pin (ICP1) that is used to trigger a capture event.  
 */
typedef enum
{
    TIM1_CAPT_FALLING_EDG = 0x0 , 
    TIM1_CAPT_RAISING_EDG = 0x40 

}TIM1_EventCapturing; 

/**
 * @brief This struct holds configuration parameters of Timer0
 * 
 */
typedef struct
{
    TIM_OpMode                      operationModeTIM1 ;                            // select from @ref TIM_OpMode enum 
    TIM1_ClockSelect                clockSourceAndPrescalerTimer1 ;                // select from @ref TIM1_ClockSelect enum 
}Timer1Config_t;


/******************************************************************************
 ******************************** TIMER 2 *************************************
 ******************************************************************************/

/**
 * @brief This enum Used to select Timer0 Clk source (clk T2S)
 * 
 */
typedef enum
{
    TIMER2_MAIN_SYS_IO_CLK    ,         // BY DEFAULT SELECTED 
    TIMER2_EXTERNAL_CLK   = 0x8         //  By setting the AS2 bit in ASSR 

}TIM2_ClockSource; 

/**
 * @brief This enum used to select main clock source with prescaler (T2S/prescaler)
 * 
 */
typedef enum
{
    TIMER2_DISABLE                    ,
    TIMER2_CLK_OVR_1                  ,
    TIMER2_CLK_OVR_8                  ,
    TIMER2_CLK_OVR_32                 ,
    TIMER2_CLK_OVR_64                ,
    TIMER2_CLK_OVR_128               ,
    TIMER2_CLK_OVR_256               ,
    TIMER2_CLK_OVR_1024               
}TIM2_ClockSelect;






/**
 * @brief This struct holds configuration parameters of Timer2
 * 
 */
typedef struct
{
    TIM2_ClockSource                 clkSourceOfTimer2 ;                            // select from @ref TIM2_ClockSource enum 
    TIM2_ClockSelect                 clkSourceAndPrescalerTimer2 ;                // select from @ref TIM2_ClockSelect enum 
    TIM_OpMode                      operationModeTIM2 ;                            // select from @ref TIM_OpMode enum 
}Timer2Config_t;

/**
 * @brief This Value Used when TIM2_ClockSource selected as TIMER2_EXTERNAL_CLK
 * 
 */
#define TIMER2_EXTERNAL_CLK_VAL_IN_HZ  32768 
/******************************************************************************
* Configuration Constants
*******************************************************************************/


#endif
/************************************* End of File ******************************************/