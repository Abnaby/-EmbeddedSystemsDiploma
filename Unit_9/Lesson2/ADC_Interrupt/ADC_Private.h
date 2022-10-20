/**
* @file ADC_Private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-20
*
*/
#ifndef ADC_PRIVATE_H 
#define ADC_PRIVATE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/

#define ADC_BASE_ADDRESS 0x24


/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/

/**
 * @brief Structure Map into Memory 
 * 
 */
typedef struct 
{
    u16 ADC_L	;	
    u8 ADCSRA	;
    u8 ADMUX	;
}volatile *const ADC_Regs;


/**
 * @brief Defineing Base Address of ADC 
 * 
 */
#define _ADC  ((ADC_Regs)ADC_BASE_ADDRESS)

/************************ INTERNAL REG MACROS   **************************************/ 

#define ADCSRA_ADPS0    0
#define ADCSRA_ADPS1    1
#define ADCSRA_ADPS2    2
#define ADCSRA_ADIE     3
#define ADCSRA_ADIF     4
#define ADCSRA_ADATE    5
#define ADCSRA_ADSC     6
#define ADCSRA_ADEN     7

#define ADMUX_MUX0      0
#define ADMUX_MUX1      1
#define ADMUX_MUX2      2
#define ADMUX_MUX3      3
#define ADMUX_MUX4      4
#define ADMUX_ADLAR     5
#define ADMUX_REFS0     6
#define ADMUX_REFS1     7


/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Private Function Prototypes
*******************************************************************************/

void __vector_14(void) __attribute__(( signal , used )); 


#endif
/************************************* End of File ******************************************/