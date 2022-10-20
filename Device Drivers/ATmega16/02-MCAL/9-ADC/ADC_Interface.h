/**
* @file ADC_Interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-20
*
*/
#ifndef ADC_INTERFACE_H 
#define ADC_INTERFACE_H 

#include "ADC_Config.h"



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
 * @brief This Function Used to Init ADC Module 
 * 
 * @param ptr_userConfig pointer to user derfined streuct @ref ADC_config_t
 */
void ADC_voidInit(ADC_config_t *ptr_userConfig);

/**
 * @brief This Function Used To Enable ADC Module Manually 
 * 
 */
void ADC_voidEnable(void);

/**
 * @brief This Function Used To Disable ADC Module Manually 
 * 
 */
void ADC_voidDisable(void);


/**
 * @brief This Function Used to En/Disable Interrupt Manually
 * 
 * @param IRQ_State select from @ref ADC_InterruptState
 */
void ADC_voidSetInterruptStates(ADC_InterruptState IRQ_State); 

/**
 * @brief This Function Used to Read 10-Bit ADC Reg Values 
 * 
 * @param ptr_u16Val pointer to 10-Bit Value
 */
void ADC_voidReadVal(u16 *ptr_u16Val);

/**
 * @brief This Function used to set cllback function of end of conversion
 * 
 * @param IEQ_CallBack pointer to function
 */
void ADC_voidSetIRQ_CallBack(ptr_VoidFcn IEQ_CallBack);

/**
 * @brief This Function Used to Start Conversion on specific Channel Asynch
 * @details Make sure that the callback function is set
 * 
 * @param copy_ChannelNum select Channel Form @ref ADC_ChennelNum 
 */
void ADC_voidStartConvertionAsynch(ADC_ChennelNum copy_ChannelNum) ;
/**
 * @brief This Function Used to Start Conversion on specific Channel Synch
 * 
 * @param copy_ChannelNum select Channel Form @ref ADC_ChennelNum 
 * @param ptr_u16Val pointer to 10-Bit Value 
 */
void ADC_voidStartConvertionSynch(ADC_ChennelNum copy_ChannelNum , u16 *ptr_u16Val)  ; 

/**
 * @brief This Function Used to get status of conversion
 * 
 * @param void 
 * @return 1 -- > Conv Complete 
		   0 -- > Not Complete  
 */
u8 ADC_u8IsConversionComplete(void);
#endif
/************************************* End of File ******************************************/