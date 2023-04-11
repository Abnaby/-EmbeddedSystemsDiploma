/**
* @file EXTI_interface.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-28
*
*/
#ifndef EXTI_INTERFACE_H 
#define EXTI_INTERFACE_H 





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
typedef enum
{
    EXTI_RISING ,
    EXTI_FALLING ,
    EXTI_ON_CHANGE 
}EXTI_CapturingMode ; 

typedef void (*EXTI_voidPtrToFunction)(void);

/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This Funcion is used to Initialize External Interrupt 
 * 
 * @param copy_LineID   Line Number 
 * @param copy_SetModeOfIRQ Capturing Mode
 */
void EXTI_voidInitLine(EXTI_Lines copy_LineID , EXTI_CapturingMode copy_SetModeOfIRQ);


/**
 * @brief This function is used to enable External IRQ
 * 
 * @param copy_LineID Line Number 
 */
void EXTI_voidEnableEXTI(EXTI_Lines copy_LineID);



/**
 * @brief This function is used to disable External IRQ
 * 
 * @param copy_LineID Line Number 
 */
void EXTI_voidDisableEXTI(EXTI_Lines copy_LineID);


/**
 * @brief This function is used to trigger sw interrupts acts as Linex
 * 
 * @param copy_LineID Line Number 
 */
void EXTI_voidSoftwareTrigger(EXTI_Lines copy_LineID);

/**
 * @brief This Function is used to change Mode of IRQ
 * 
 * @param copy_LineID Line Number 
 * @param copy_SetModeOfIRQ   Mode of EXTI IRQ
 */
void EXTI_voidChangeLineTrigger(EXTI_Lines copy_LineID , EXTI_CapturingMode copy_SetModeOfIRQ);


/**
 * @brief This Function is used to set callback function of LINEx ISR
 * 
 * @param copy_LineID Line Number
 * @param ptr_ISRFunc pointer to fcn
 */
void EXTI_voidSetCallBackFCN(EXTI_Lines copy_LineID , EXTI_voidPtrToFunction ptr_ISRFunc);
#endif
/************************************* End of File ******************************************/