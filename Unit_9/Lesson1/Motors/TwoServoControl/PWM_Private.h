/**
* @file PWM_Private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-15
*
*/
#ifndef PWM_PRIVATE_H 
#define PWM_PRIVATE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/

#define ANTI_GLITCH_ENABLE  1
#define ANTI_GLITCH_DISABLE 0


/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/

/********************TIMER0******************************/
#define TIM_TCCR0               *((volatile u8 *) 0x53 )
    #define TCCR0_CS00          0
    #define TCCR0_CS01          1
    #define TCCR0_CS02          2
    #define TCCR0_WGM01         3
    #define TCCR0_COM00         4
    #define TCCR0_COM01         5
    #define TCCR0_WGM00         6
    #define TCCR0_FOC0          7
#define TIM_TCNT0               *((volatile u8 *) 0x52 )
#define TIM_OCR0                *((volatile u8 *) 0x5C )
/********************TIMER1******************************/
#define TIM_TCCR1A              *((volatile u8 *) 0x4F )
    #define TCCR1A_COM1A1       7
    #define TCCR1A_COM1A0       6
    #define TCCR1A_COM1B1       5
    #define TCCR1A_COM1B0       4
    #define TCCR1A_FOC1A        3
    #define TCCR1A_FOC1B        2
    #define TCCR1A_WGM11        1
    #define TCCR1A_WGM10        0
#define TIM_TCCR1B              *((volatile u8 *) 0x4E )
    #define TCCR1B_ICNC1        7
    #define TCCR1B_ICES1        6
    #define TCCR1B_WGM13        4
    #define TCCR1B_WGM12        3
    #define TCCR1B_CS12         2
    #define TCCR1B_CS11         1
    #define TCCR1B_CS10         0
#define TIM_TCNT1               *((volatile u16 *) 0x4C )
#define TIM_OCR1A               *((volatile u16 *)  0x4A )
#define TIM_OCR1B               *((volatile u16 *) 0x48 )
#define TIM_ICR1                *((volatile u16 *) 0x46 )

/********************TIMER2******************************/
#define TIM_TCCR2               *((volatile u8 *) 0x45 )
    #define TCCR2_CS20          0
    #define TCCR2_CS21          1
    #define TCCR2_CS22          2
    #define TCCR2_WGM21         3
    #define TCCR2_COM20         4
    #define TCCR2_COM21         5
    #define TCCR2_WGM20         6
    #define TCCR2_FOC2          7
#define TIM_TCNT2               *((volatile u8 *) 0x44 )
#define TIM_OCR2                *((volatile u8 *) 0x43 )
#define TIM_ASSR2               *((volatile u8 *) 0x42 )
    #define ASSR2_TCR2UB        0
    #define ASSR2_OCR2UB        1
    #define ASSR2_TCN2UB        2
    #define ASSR2_AS2           3

/***************************ALL TIMERS******************/ 
#define TIM_TIMSK               *((volatile u8 *) 0x59 )
    #define TIMSK_TOIE0         0
    #define TIMSK_OCIE0         1
    #define TIMSK_TOIE1         2
    #define TIMSK_OCIE1B        3
    #define TIMSK_OCIE1A        4
    #define TIMSK_TICIE1        5
    #define TIMSK_TOIE2         6
    #define TIMSK_OCIE2         7
#define TIM_TIFR                *((volatile u8 *) 0x58 )
    #define TIFR_TOV0           0
    #define TIFR_OCF0           1
    #define TIFR_TOV1           2
    #define TIFR_OCF1B          3
    #define TIFR_OCF1A          4
    #define TIFR_ICF1           5
    #define TIFR_TOV2           6
    #define TIFR_OCF2           7









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
static u8 GetNearestVal(u16 Number , u16 *arr , u8 copy_u8Size);


#endif
/************************************* End of File ******************************************/