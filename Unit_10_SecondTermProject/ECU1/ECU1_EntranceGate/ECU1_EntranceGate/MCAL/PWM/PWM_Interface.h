/**
* @file PWM_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-15
*
*/
#ifndef PWM_INTERFACE_H 
#define PWM_INTERFACE_H 
#include "PWM_Config.h"




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
 * @brief This function used to Init PWM Module for Timedx With User Config
 * 
 * @param ptr_userConfig Instance of User Configurtion 
 */
void PWM_voidInit(PWM_config_t *ptr_userConfig);

/**
 * @brief This Function Used to set Function of OC Pin
 * 
 * @param ptr_userConfig Instance of User Configurtion
 * @param setOCpinMode select on of @ref PWM_OC_Pin
 */
void PWM_voidSetOCPin(PWM_config_t *ptr_userConfig , PWM_OC_Pin setOCpinMode);

/**
 * @brief This Function Used to generate duty cycle on OC pin 
 * @details This Works With Fast Mode PWM Only 
 * @param ptr_userConfig Instance of User Configurtion
 * @param copy_u16fDuty For Timer0/2 Range 0-->255 ; 
 *                      For Timer1   Range 0--> 1023
 */
void PWM_voidSetDuty(PWM_config_t *ptr_userConfig,u16 copy_u16fDuty);

/**
 * @brief This Function Used To Generate Symmetric and Asymmetric PWM  
 * 
 * @details For Symmetric PWM use PWM1 with PHASE and FREQ Correct Mode
 *          For Asymmetric PWM use PWM0/PWM2 with Phase Correct Mode
 * @param ptr_userConfig    Instance of User Configurtion
 * @param copy_u8FreqInHz   Freq In Hz
 * @param copy_u8DutyCycle Duty Cycle of This Wave 
 */
void PWM_voidGeneratePWM(PWM_config_t *ptr_userConfig, u8 copy_u8FreqInHz , u8 copy_u8DutyCycle);

/**
 * @brief This Function Used To Set Phase_Freq Parameters TOP,COMP Values  
 * 
 * @details be aware of overflows
			Timer1 Only
 * @param ptr_userConfig    Instance of User Configurtion
 * @param copy_u16TopValue   Freq Correction Value
 * @param copy_u16CompValue  Phase Correction Value 
 * @param setOCpinMode select on of @ref PWM_OC_Pin
 */
void PWM_voidPhaseFrequencyCorrectSetValues(PWM_config_t *ptr_userConfig,PWM_OC_Pin setOCpinMode, u16 copy_u16TopValue , u16 copy_u16CompValue);
#endif
/************************************* End of File ******************************************/