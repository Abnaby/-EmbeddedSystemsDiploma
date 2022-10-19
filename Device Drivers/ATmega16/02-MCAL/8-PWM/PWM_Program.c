/**
* @file PWM_Program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-15
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "MAPPING.h"
#include "PWM_Interface.h"
#include "PWM_Config.h"
#include "PWM_Private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/


static u16 TIMER0_Prescaler ; 
static u16 TIMER1_Prescaler ; 
static u16 TIMER2_Prescaler ; 

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/


#define ABS(N) ((N<0)?(-N):(N))
/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

PWM_config_t *UsrPWMPointer = (void*)0 ;


/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/

void PWM_voidInit(PWM_config_t *ptr_userConfig)
{
    switch (ptr_userConfig->TimerNumber)
    {
    case TIMER0:
    {
        // PWM MODE WGM00 = 1 
        TIM_TCCR0 |= ptr_userConfig->PWM_MOP ; 
        // Get Prescaler 
		switch(ptr_userConfig->TimerPrescaler)
		{
			case PWM_TIMER0_DISABLE:     TIMER0_Prescaler = 0 ; 			    break ;
			case PWM_TIMER0_CLK_OVR_1:	 TIMER0_Prescaler = 1 ; 			    break ; 
			case PWM_TIMER0_CLK_OVR_8:	 TIMER0_Prescaler = 8 ;				break ; 
			case PWM_TIMER0_CLK_OVR_64:	 TIMER0_Prescaler = 64 ;				break ; 
			case PWM_TIMER0_CLK_OVR_256: TIMER0_Prescaler = 256	;			break ; 
			case PWM_TIMER0_CLK_OVR_1024: TIMER0_Prescaler = 1024	;			break ; 	
			default: break ;  
		}
       // Set Clock With Prescaler 
        TIM_TCCR0 &= ~(0x7) ; 
        TIM_TCCR0 |= ptr_userConfig->TimerPrescaler ;
        break;
    }
    case TIMER1:
    {
        /*  Must Be Freq And Phase Correct  */

        // Slect Mode 
        TIM_TCCR1A |= (ptr_userConfig->PWM_MOP&0b0011);  
        TIM_TCCR1B |= ((ptr_userConfig->PWM_MOP>>2) << TCCR1B_WGM12);

        // Get Prescaler 
		switch(ptr_userConfig->TimerPrescaler)
		{
			case PWM_TIMER1_DISABLE:     TIMER1_Prescaler = 0 ; 			    break ;
			case PWM_TIMER1_CLK_OVR_1:	 TIMER1_Prescaler = 1 ; 			    break ; 
			case PWM_TIMER1_CLK_OVR_8:	 TIMER1_Prescaler = 8 ;				break ; 
			case PWM_TIMER1_CLK_OVR_64:	 TIMER1_Prescaler = 64 ;				break ; 

			case PWM_TIMER1_CLK_OVR_256: TIMER1_Prescaler = 256	;			break ; 
			case PWM_TIMER1_CLK_OVR_1024: TIMER1_Prescaler = 1024	;			break ; 	
			default: break ;  
		}
       // Set Clock With Prescaler 
        TIM_TCCR1B &= ~(0x7) ; 
        TIM_TCCR1B |= ptr_userConfig->TimerPrescaler ;
        break;
    }
    case TIMER2:
    {
                // PWM MODE WGM00 = 1 
        TIM_TCCR2 |= ptr_userConfig->PWM_MOP ; 
        // Get Prescaler 
		switch(ptr_userConfig->TimerPrescaler)
		{
            case PWM_TIMER2_DISABLE:     TIMER2_Prescaler = 0 ; 			    break ;
            case PWM_TIMER2_CLK_OVR_1:	TIMER2_Prescaler = 1 ; 			    break ; 
            case PWM_TIMER2_CLK_OVR_8:	TIMER2_Prescaler = 8 ;				break ; 
            case PWM_TIMER2_CLK_OVR_32: TIMER2_Prescaler = 32	;			break ; 
            case PWM_TIMER2_CLK_OVR_64: TIMER2_Prescaler = 64	;			break ; 	
            case PWM_TIMER2_CLK_OVR_128: TIMER2_Prescaler = 128	;			break ; 	
            case PWM_TIMER2_CLK_OVR_256:	TIMER2_Prescaler = 256	;			break ; 
            case PWM_TIMER2_CLK_OVR_1024: TIMER2_Prescaler = 1024	;			break ; 	
            default: break ;  
		}
       // Set Clock With Prescaler 
        TIM_TCCR2 &= ~(0x7) ; 
        TIM_TCCR2 |= ptr_userConfig->TimerPrescaler ;
        break;

    }
    default:
        break;
    }
}

void PWM_voidSetOCPin(PWM_config_t *ptr_userConfig , PWM_OC_Pin setOCpinMode)
{
    switch (ptr_userConfig->TimerNumber)
    {
    case TIMER0:
    {
        TIM_TCCR0 |= setOCpinMode ;
        break ; 
    }
    case TIMER1:
	{
		TIM_TCCR1A |= setOCpinMode ; 
        break;
	}
    case TIMER2:
        TIM_TCCR2 |= setOCpinMode ; 
        break;
    default:
        break;
    }
}

/*  FAST MODE   */
void PWM_voidSetDuty(PWM_config_t *ptr_userConfig,u16 copy_u16fDuty)
{
    switch (ptr_userConfig->TimerNumber)
    {
    case TIMER0:
    {
        if(copy_u16fDuty >= 0 && copy_u16fDuty <= 255)
        {
            TIM_OCR0 = (u8)copy_u16fDuty ;
        }
        else
        {
            // OUT OF RANGE 
        }
        break ; 
    }
    case TIMER1:
    {  
        /*  10-BIT MODE TOP = 0x03FF    */
        if(copy_u16fDuty >= 0 && copy_u16fDuty <= 1023)
        {
			// Check Wich pin if COM1A1 == 1 && COM1B1 == 0 so OC1A
			if(GET_BIT(TIM_TCCR1A,TCCR1A_COM1A1) == 1 && GET_BIT(TIM_TCCR1A,TCCR1A_COM1B1) == 0)
			{
				TIM_OCR1A = copy_u16fDuty ; 				
			}
			else
			{
				TIM_OCR1B = copy_u16fDuty ; 				
			}
        }
        else
        {
            // OUT OF RANGE 
        }
        break ; 
    }
    case TIMER2:
    {
        if(copy_u16fDuty >= 0 && copy_u16fDuty <= 255)
        {
            TIM_OCR2 = (u8)copy_u16fDuty ;
        }
        else
        {
            // OUT OF RANGE 
        }
        break;
    }
    default:
        break;
    }
}
/*  USE PHASE CORRECT IN TIMER0 AND PHASE AND FREQ CORRECT IN TIMER1    */
void PWM_voidGeneratePWM(PWM_config_t *ptr_userConfig, u8 copy_u8FreqInHz , u8 copy_u8DutyCycle)
{
    u32 TicksVal = 0 ; 
    u16 LOC_u16GetPrescalerVal = 0 ;
    if(copy_u8DutyCycle >= 0 && copy_u8DutyCycle <= 100)
    {
        switch (ptr_userConfig->TimerNumber)
        {
        case TIMER0:
        {
                // Inverting 
                u16 arr[5]  = {1,8,64,256,1024}; 
                // INVERTING 
                LOC_u16GetPrescalerVal = ((u32)CPU_CLOCK_FREQ / (copy_u8FreqInHz * 510));   // Prescaler Value
                /*  Get Nearest Value   */
                LOC_u16GetPrescalerVal = GetNearestVal(LOC_u16GetPrescalerVal ,  arr , 5);
                if(GET_BIT(TIM_TCCR0,TCCR0_COM00))
                {
                    // OCR0 VAL
                    TicksVal =  (510 - (((copy_u8DutyCycle * 510 ) / ((u16)100))))/2; 
                }
                else
                {
                    // NON-INVERTING
                    // DC =2*OCR0/510 *100    --> OCR0 = DC*51/20 ; 
                    TicksVal =  copy_u8DutyCycle * 2 ; 
                }
                TIM_OCR0 = (u8)TicksVal ; 
                // Run Timer 0 
                TIM_TCCR0 &= ~(0x7) ; 
                TIM_TCCR0 |= LOC_u16GetPrescalerVal ; 
                break;

        }
        case TIMER1:
        {
            /* CHK ANTI-GLITCH MODE	*/
            if(TIM1_ANTI_GLITCH == ANTI_GLITCH_ENABLE)
            {
                // GOTO ANTI GLITCH MODE BY 
                // SET WGM13 = 1    WGM12=0    WGM11=0      WGM10=1 
                SET_BIT(TIM_TCCR1B,TCCR1B_WGM13);
                CLR_BIT(TIM_TCCR1B,TCCR1B_WGM12);
                SET_BIT(TIM_TCCR1A,TCCR1A_WGM10);
                CLR_BIT(TIM_TCCR1A,TCCR1A_WGM11);
                
                /* CHK PIN IS  OC1B PD4 BY CHKING VAL OF COMB1 FRM TCCR1A = 1*/
                if(GET_BIT(TIM_TCCR1A,TCCR1A_COM1B1) == 1)
                {
                    // Calculation and set OCR1A as a Top NOT This Freq During Up-Down Count so we need Half of it to calc TOP val
                    TicksVal = TIMER1_Prescaler * (u32)copy_u8FreqInHz ; 
                    TicksVal = (u32)CPU_CLOCK_FREQ / TicksVal ; 
                    TIM_OCR1A = (TicksVal/2) ;
                    
                    // CHK INVERTING MODE BY GETTING VAL OF COMB0 FRM TCCR1A IF ==1 INVERTING
                    if(GET_BIT(TIM_TCCR1A,TCCR1A_COM1B0) == 1)
                    {
                        // Inverting 
                        // Duty Cycle Calc
                        TicksVal =  ((2*TicksVal) - (((copy_u8DutyCycle * (2*TicksVal) ) / ((u16)100))))/2; 
                    }
                    else
                    {
                        // Non Inverting 
                        // Clear OC1A/OC1B on compare match when upcounting. (Non Inverting)
                        // Duty Cycle Calc
                        // TicksVal =  (copy_u8DutyCycle * TicksVal) / (2*100)
                        TicksVal =  (copy_u8DutyCycle * (TicksVal)) / ((u16)200);
                    }
                    // Set Duty 
                    TIM_OCR1B = TicksVal ; 				
                }
                else
                {
                    // <! TODO ERROR > Pin Selection 
                    
                }
            }
            else
            {
                // ANTI GLITCH DISABLED 
                // GOTO ANTI GLITCH MODE BY 
                // SET WGM13 = 1    WGM12=0    WGM11=0      WGM10=0 
                SET_BIT(TIM_TCCR1B,TCCR1B_WGM13);
                CLR_BIT(TIM_TCCR1B,TCCR1B_WGM12);
                CLR_BIT(TIM_TCCR1A,TCCR1A_WGM10);
                CLR_BIT(TIM_TCCR1A,TCCR1A_WGM11);
                // Calculation and set OCR1A as a Top NOT This Freq During Up-Down Count so we need Half of it to calc TOP val
                TicksVal = TIMER1_Prescaler * (u32)copy_u8FreqInHz ; 
                TicksVal = (u32)CPU_CLOCK_FREQ / TicksVal ; 
                TIM_ICR1 = (u16)(TicksVal/2) ;
                /*	CHK WHICH PIN USED	*/
                if(GET_BIT(TIM_TCCR1A,TCCR1A_COM1B1) == 1)
                {
                    /* INVRTING CHK	*/
                    if(GET_BIT(TIM_TCCR1A,TCCR1A_COM1B0) == 1)
                    {
                        // Inverting 
                        // Duty Cycle Calc
                        TicksVal =  ((2*TicksVal) - (((copy_u8DutyCycle * (2*TicksVal) ) / ((u16)100))))/2; 
                        // Set Duty 
                        TIM_OCR1B = (u16)TicksVal ; 				
                    }
                    else
                    {
                        // Non Inverting 
                        // Clear OC1A/OC1B on compare match when upcounting. (Non Inverting)
                        // Duty Cycle Calc
                        // TicksVal =  (copy_u8DutyCycle * TicksVal) / (2*100)
                        TicksVal =  (copy_u8DutyCycle * (TicksVal)) / ((u16)200);
                        // Set Duty 
                        TIM_OCR1B = (u16)TicksVal ; 				
                    }	
                }
                else if (GET_BIT(TIM_TCCR1A,TCCR1A_COM1A1) == 1)
                {
                        /* INVRTING CHK	*/
                    if(GET_BIT(TIM_TCCR1A,TCCR1A_COM1A0) == 1)
                    {
                        // Inverting 
                        // Duty Cycle Calc
                        TicksVal =  ((2*TicksVal) - (((copy_u8DutyCycle * (2*TicksVal) ) / ((u16)100))))/2; 
                        // Set Duty 
                        TIM_OCR1A = (u16)TicksVal ; 				
                    }
                    else
                    {
                        // Non Inverting 
                        // Clear OC1A/OC1B on compare match when upcounting. (Non Inverting)
                        // Duty Cycle Calc
                        // TicksVal =  (copy_u8DutyCycle * TicksVal) / (2*100)
                        TicksVal =  (copy_u8DutyCycle * (TicksVal)) / ((u16)200);
                        // Set Duty 
                        TIM_OCR1A = (u16)TicksVal ; 				
                    }	
                }
                else
                {
                    // <!TODO> ERROR IN PIN SELECTION 
                }
                
            }
			break;
        }
        case TIMER2:
        {
                u16 arr[7]  = {1,8,32,64,128,256,1024}; 
                // INVERTING 
                LOC_u16GetPrescalerVal = ((u32)CPU_CLOCK_FREQ / (copy_u8FreqInHz * 510));   // Prescaler Value
                /*  Get Nearest Value   */
                LOC_u16GetPrescalerVal = GetNearestVal(LOC_u16GetPrescalerVal ,  arr , 7);
                // Inverting 
                if(GET_BIT(TIM_TCCR2,TCCR2_COM20))
                {
                    // OCR2 VAL
                    TicksVal =  (510 - (((copy_u8DutyCycle * 510 ) / ((u16)100))))/2; 
                }
                else
                {
                    // NON-INVERTING
                    // DC =2*OCR0/510 *100    --> OCR0 = DC*51/20 ; 
                    TicksVal =  copy_u8DutyCycle * 2 ; 
                }
                TIM_OCR2 = (u8)TicksVal ; 
                // Run Timer 0 
                TIM_TCCR2 &= ~(0x7) ; 
                TIM_TCCR2 |= LOC_u16GetPrescalerVal ; 
                break;
        }
        default:
            break;
        } 
    }
      
    else
    {
        // <TODO ERROR> DC OUT OF RANGE
    }
}

void PWM_voidPhaseFrequencyCorrectSetValues(PWM_config_t *ptr_userConfig,PWM_OC_Pin setOCpinMode, u16 copy_u16TopValue , u16 copy_u16CompValue)
{
/* CHK ANTI-GLITCH MODE	*/
if(TIM1_ANTI_GLITCH == ANTI_GLITCH_ENABLE)
{
    // GOTO ANTI GLITCH MODE BY 
    // SET WGM13 = 1    WGM12=0    WGM11=0      WGM10=1 
    SET_BIT(TIM_TCCR1B,TCCR1B_WGM13);
    CLR_BIT(TIM_TCCR1B,TCCR1B_WGM12);
    SET_BIT(TIM_TCCR1A,TCCR1A_WGM10);
    CLR_BIT(TIM_TCCR1A,TCCR1A_WGM11);
                
    /* CHK PIN IS  OC1B PD4 BY CHKING VAL OF COMB1 FRM TCCR1A = 1*/
    if(GET_BIT(TIM_TCCR1A,TCCR1A_COM1B1) == 1)
    {
        // Calculation and set OCR1A as a Top NOT This Freq During Up-Down Count so we need Half of it to calc TOP val

        TIM_OCR1A = copy_u16TopValue ;
        // Set Duty 
        TIM_OCR1B = copy_u16CompValue ; 				
    }
    else
    {
        // <! TODO ERROR > Pin Selection 
                    
    }
}
else
{
    // ANTI GLITCH DISABLED 
    // GOTO ANTI GLITCH MODE BY 
    // SET WGM13 = 1    WGM12=0    WGM11=0      WGM10=0 
    SET_BIT(TIM_TCCR1B,TCCR1B_WGM13);
    CLR_BIT(TIM_TCCR1B,TCCR1B_WGM12);
    CLR_BIT(TIM_TCCR1A,TCCR1A_WGM10);
    CLR_BIT(TIM_TCCR1A,TCCR1A_WGM11);
    // Calculation and set OCR1A as a Top NOT This Freq During Up-Down Count so we need Half of it to calc TOP val
    TIM_ICR1 = copy_u16TopValue ;
    /*	CHK WHICH PIN USED	*/
    if(setOCpinMode == PWM1_PD4_FM_NON_INVERTING ||setOCpinMode == PWM1_PD4_FM_INVERTING )
    {
            TIM_OCR1B = copy_u16CompValue ; 				

    }
    else if (setOCpinMode == PWM1_PD5_FM_NON_INVERTING ||setOCpinMode == PWM1_PD5_FM_INVERTING)
    {
        TIM_OCR1A = copy_u16CompValue ; 				
    }
                
}
 
}
/**************************************PRIVATE************************************************/

u8 GetNearestVal(u16 Number , u16 *arr , u8 copy_u8Size)
{
    u16 min = 1000 ; 
    u8 index = 10 ; 
    for (u8 i = 0; i < copy_u8Size; i++)
    {
		u8 x = ABS(Number- arr[i]) ; 
        if(min >  x)
        {
            min = x ;
            index = i ; 
        }
    }
    return index+1 ; 

}
/************************************* End of File ******************************************/