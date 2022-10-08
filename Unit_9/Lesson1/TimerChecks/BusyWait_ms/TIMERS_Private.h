/**
* @file TIMERS_Private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-05
*
*/
#ifndef TIMERS_PRIVATE_H 
#define TIMERS_PRIVATE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/

#define TIM_GENERATE_1_MS   1000 

#define TIM_GENERATE_1_US   1000000 


#define _8_BIT_OV_ 255

#define ASYNCH	0
#define SYNCH	1

/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/

#define TIM_TCCR0               *((volatile u8 *) 0x53 )
    #define TCCR0_CS00          0
    #define TCCR0_CS01          1
    #define TCCR0_CS02          2
    #define TCCR0_WGN01         3
    #define TCCR0_COM00         4
    #define TCCR0_COM01         5
    #define TCCR0_WGM00         6
    #define TCCR0_FOC0          7


#define TIM_TCNT0               *((volatile u8 *) 0x52 )
#define TIM_OCR0                *((volatile u8 *) 0x5C )
#define TIM_TIMSK               *((volatile u8 *) 0x59 )
    #define TIMSK_TOIE0  0
    #define TIMSK_OCIE0  1
    #define TIMSK_TOIE1  2
    #define TIMSK_OCIE1B 3
    #define TIMSK_OCIE1A 4
    #define TIMSK_TICIE1 5
    #define TIMSK_TOIE2 6
    #define TIMSK_OCIE2 7
#define TIM_TIFR                *((volatile u8 *) 0x58 )
    #define TIFR_TOV0    0
    #define TIFR_OCF0    1
    #define TIFR_TOV1    2
    #define TIFR_OCF1B   3
    #define TIFR_OCF1A   4
    #define TIFR_ICF1    5
    #define TIFR_TOV2    6
    #define TIFR_OCF2    7




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
/*		CTC INTERRUPT		*/
void __vector_19(void) __attribute__(( signal , used ));
/*		OVERFLOW INTERRUPT		*/
void __vector_9(void) __attribute__(( signal , used ));



#endif
/************************************* End of File ******************************************/