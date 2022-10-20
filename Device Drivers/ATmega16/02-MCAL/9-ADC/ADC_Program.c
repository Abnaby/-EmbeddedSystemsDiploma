/**
* @file ADC_Program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-20
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "ADC_Interface.h"
#include "ADC_Config.h"
#include "ADC_Private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/
#define WAIT_ADC_CONV()   while((_ADC->ADCSRA&(1<<ADCSRA_ADIF))==0);	



/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/

ptr_VoidFcn __CMPLT_CONVERSION_ADC__ = NULL ;

/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/

void ADC_voidInit(ADC_config_t *ptr_userConfig)
{
    // ADC_VoltageReference
    _ADC->ADMUX |= (ptr_userConfig->ADC_voltageRef) ; 
    // ADC_Prescaler
    _ADC->ADCSRA |= (ptr_userConfig->ADC_PrescalerSelect) ; 
    // ADC_RunningMode
    (ptr_userConfig->ADC_RunningModeSelect == 0) ?  (
                                                        // Free Running
                                                        _ADC->ADCSRA |= (1<<ADCSRA_ADATE)  
                                                    ) : 
                                                    (
                                                        // Single Shot 
                                                        _ADC->ADCSRA &= ~(1<<ADCSRA_ADATE)  
                                                    ) ; 
    // ADC_InterruptState
    _ADC->ADCSRA |= (ptr_userConfig->ADC_Interrupt) ;
    // Enable ADC 
    _ADC->ADCSRA |= (1<<7) ; 
}

void ADC_voidEnable()
{
    _ADC->ADCSRA |= (1<<7) ; 
}
void ADC_voidDisable()
{
    _ADC->ADCSRA &= ~(1<<7) ; 
}
void ADC_voidSetInterruptStates(ADC_InterruptState IRQ_State)
{
    _ADC->ADCSRA &= ~ (1<< ADCSRA_ADIE) ; 
    _ADC->ADCSRA |= IRQ_State ;
}

void ADC_voidSetIRQ_CallBack(ptr_VoidFcn IEQ_CallBack)
{
    __CMPLT_CONVERSION_ADC__ = IEQ_CallBack  ; 
}
void ADC_voidReadVal(u16 *ptr_u16Val)
{
	u16 regVal =  _ADC->ADC_L  ;   
    *ptr_u16Val = regVal & 0x3FF ; 
}
void ADC_voidStartConvertionAsynch(ADC_ChennelNum copy_ChannelNum) 
{
    // Make Sure Interrupt Is Enabled 
    ADC_voidEnable() ;
    // Make Sure __CMPLT_CONVERSION_ADC__ != Null
    if(__CMPLT_CONVERSION_ADC__ != NULL)
    {
        // Select Chennel 
        _ADC->ADMUX |= copy_ChannelNum ; 
        // Start Conversion 
        _ADC->ADCSRA |= (1<<ADCSRA_ADSC);		
    }
}
void ADC_voidStartConvertionSynch(ADC_ChennelNum copy_ChannelNum , u16 *ptr_u16Val) 
{
    // Select Chennel 
    _ADC->ADMUX |= copy_ChannelNum ; 
    // Start Conversion 
    _ADC->ADCSRA |= (1<<ADCSRA_ADSC);	
    // Wait Untill Finish
    WAIT_ADC_CONV();
    //Set Val of ADC
	u16 regVal =  _ADC->ADC_L  ;   
    *ptr_u16Val = regVal & 0x3FF ; 
	// Clear Flag
	_ADC->ADCSRA |= (1<<ADCSRA_ADIF);
} 

u8 ADC_u8IsConversionComplete()
{
	return 	(!(_ADC->ADCSRA&(1<<ADCSRA_ADIF))); 
}
/************************************ IRQs *************************************************/
void __vector_14(void)
{
    __CMPLT_CONVERSION_ADC__();
    // ADIF is cleared by writing a logical one to the flag. Beware that if doing a Read-Modify-Write on ADCSRA
}

/************************************* End of File ******************************************/