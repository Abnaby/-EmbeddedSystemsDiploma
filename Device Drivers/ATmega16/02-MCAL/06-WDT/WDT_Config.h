/**
* @file WDT_Config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-05
*
*/
#ifndef WDT_CONFIG_H 
#define WDT_CONFIG_H 





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
 * @brief This enum used to set watchdog timer timeout 
 * @details this used with 
 *                           - Watchdog Timer is clocked from a separate On-chip Oscillator which runs at 1MHz
 *                           - typical value at VCC = 5V
 */
typedef enum
{
    WDT_TIM_OUT_16P3_MS = 0b000 ,
    WDT_TIM_OUT_32P5_MS = 0b001 ,
    WDT_TIM_OUT_65P0_MS = 0b010 ,
    WDT_TIM_OUT_0P13_MS = 0b011 ,
    WDT_TIM_OUT_0P26_MS = 0b100 ,
    WDT_TIM_OUT_0P52_MS = 0b101 ,
    WDT_TIM_OUT_1P0_SEC = 0b110 ,
    WDT_TIM_OUT_2P1_SEC = 0b111
}WDT_timeOut; 

/******************************************************************************
* Configuration Constants
*******************************************************************************/




#endif
/************************************* End of File ******************************************/