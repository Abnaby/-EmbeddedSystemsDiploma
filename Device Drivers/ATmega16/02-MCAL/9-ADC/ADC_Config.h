/**
* @file ADC_Config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-20
*
*/
#ifndef ADC_CONFIG_H 
#define ADC_CONFIG_H 





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
 * @brief This Enum Used to Select Channel Number 
 * @details SE --> Single Endded
 * 
 */
typedef enum
{
    ADC_CHENNEL_0_SE       = 0 ,
    ADC_CHENNEL_1_SE       ,
    ADC_CHENNEL_2_SE       ,
    ADC_CHENNEL_3_SE       ,
    ADC_CHENNEL_4_SE       ,
    ADC_CHENNEL_5_SE       ,
    ADC_CHENNEL_6_SE       ,
    ADC_CHENNEL_7_SE       

}ADC_ChennelNum;
/**
 * @brief This Enum Hold Available Vref Options 
 * 
 */
typedef enum
{
    ADC_REF_VREF_AREF	            = 0 , 
    ADC_REF_AVCC                    = 0x40 , 
    ADC_REF_INTERNAL_2P56_V         = 0xC0
}ADC_VoltageReference ; 

|Param | Description |
|-------|-------|
|ADC_REF_VREF_AREF|AREF, Internal Vref turned off|
|ADC_REF_AVCC|AREF, Internal Vref turned off|
|ADC_REF_INTERNAL_2P56_V|Internal 2.56V Voltage Reference with external capacitor at AREF pin|

/**
 * @brief This Enum Used To Set CLK of ADC
 * 
 */
typedef enum
{
    ADC_PRESCALED_2                 = 0 ,
    ADC_PRESCALED_4                 = 2 , 
    ADC_PRESCALED_8                  ,
    ADC_PRESCALED_16                 ,
    ADC_PRESCALED_32                 , 
    ADC_PRESCALED_64                 , 
    ADC_PRESCALED_128               
}ADC_Prescaler ; 

/**
 * @brief This Enum Holds Available Options for ADC Running Mode
 * 
 */
typedef enum
{
    ADC_SINGLE_CONVERSION           = 0x20 
}ADC_RunningMode ;

/**
 * @brief This Enum Holds Avaliable Options for Interrupt States 
 * 
 */
typedef enum
{
    ADC_IRQ_DISABLE = 0 , 
    ADC_IRQ_ENABLE = 0x8 
}ADC_InterruptState ; 

/**
 * @brief User Defined Struct
 * 
 */
typedef struct
{
    ADC_VoltageReference      ADC_voltageRef    ;   
    ADC_Prescaler             ADC_PrescalerSelect ; 
    ADC_RunningMode           ADC_RunningModeSelect ; 
    ADC_InterruptState        ADC_Interrupt     ;
}ADC_config_t;


/******************************************************************************
* Configuration Constants
*******************************************************************************/




#endif
/************************************* End of File ******************************************/