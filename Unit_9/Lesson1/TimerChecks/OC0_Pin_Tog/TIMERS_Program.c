/**
* @file TIMERS_Program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-05
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "MAPPING.h"
#include "TIMERS_Interface.h"
#include "TIMERS_Config.h"
#include "TIMERS_Private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

#define WAIT_OV_FLAG(REG,BIT) while (GET_BIT(REG,BIT) == 0)


/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define PRESCALVAL(TIMER_SLCT)   (GLOBAL_ptrToTimer0UserConf->clockSourceAndPrescalerTimer0)
#define NUMOFTICKS(DEL,UNIT,FCPU,PRES) ((u32)((DEL * FCPU)/(UNIT * PRES)))

/******************************************************************************
* Typedefs
*******************************************************************************/
typedef void(*ptr_VoidFcn)(void); 

ptr_VoidFcn TIMER0_OV_CallBack ; 
ptr_VoidFcn TIMER0_CTC_CallBack_Periodic; 
ptr_VoidFcn TIMER0_CTC_CallBack_Single; 

ptr_VoidFcn TIMER1_OV_CallBack ; 
ptr_VoidFcn TIMER1_IC_Callback ; 
ptr_VoidFcn TIMER2_OV_CallBack ; 


/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static Timer0Config_t* GLOBAL_ptrToTimer0UserConf ; 
static u16 Timer0Prescaler = 0 ; 
static u8 Global_u8Timer0Interval = PERIODIC  ; 
static u16 Global_u16NumberOfOverflowsInCTC = 0 ; 
static u8 Global_u8PWM_State = PWM_HIGH_PER ; 
static u32 Global_u8PWM_Ton = 0 ; 
static u32 Global_u8PWM_Toff = 0 ; 


static Timer1Config_t* GLOBAL_ptrToTimer1UserConf ; 
static u16 Timer1Prescaler = 0 ; 


static Timer2Config_t* GLOBAL_ptrToTimer2UserConf ; 
static u16 Timer2Prescaler = 0 ; 

/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/

void Timer_voidInitTimer0(Timer0Config_t *ptr_userConfig)
{
    if(ptr_userConfig != NULL)
    {
        // Clear Timer/Counter Control Register to defult value 
        TIM_TCCR0 = 0  ;   
        // Get Parm of user selected 
        GLOBAL_ptrToTimer0UserConf = ptr_userConfig ; 
        // Slect Mode 
        TIM_TCCR0 |= GLOBAL_ptrToTimer0UserConf->operationModeTIM0 ; 
        // Disable Timer Module 
            // by default disable 
			//Set Global Variable 
		switch(GLOBAL_ptrToTimer0UserConf->clockSourceAndPrescalerTimer0)
		{
			case TIMER0_DISABLE:     Timer0Prescaler = 0 ; 			    break ;
			case TIMER0_CLK_OVR_1:	Timer0Prescaler = 1 ; 			    break ; 
			case TIMER0_CLK_OVR_8:	Timer0Prescaler = 8 ;				break ; 
			case TIMER0_CLK_OVR_256:	Timer0Prescaler = 256	;			break ; 
			case TIMER0_CLK_OVR_1024: Timer0Prescaler = 1024	;			break ; 	
			default: break ;  
		}
    }
    else
    {
        // <!TODO> ERROR IN CONFIG POINTER 
    }
}
void Timer_voidInitTimer2(Timer2Config_t *ptr_userConfig)
{
    GLOBAL_ptrToTimer2UserConf = ptr_userConfig ; 
    if(ptr_userConfig != NULL)
    {
        
        /*  CHK CLK SRC    */ 
        if(ptr_userConfig->clkSourceOfTimer2 != TIMER2_MAIN_SYS_IO_CLK)
        {
            // Asynch Mode :  A safe procedure for switching clock source is
            // STEP1:  Disable the Timer/Counter2 interrupts by clearing OCIE2 and TOIE2 
            CLR_BIT(TIM_TIMSK,TIMSK_OCIE2); 
            CLR_BIT(TIM_TIMSK,TIMSK_TOIE2);
            // STEP2: Select clock source by setting AS2 as appropriate
            SET_BIT(TIM_ASSR2,ASSR2_AS2);
            // STEP3: Write new values to TCNT2, OCR2, and TCCR2
            TIM_TCNT2 = 0 ;
            TIM_TCCR2 = 0  ;
            //wait for registers update
            while (TIM_ASSR2 & ((1<<ASSR2_TCN2UB)|(1<<ASSR2_TCR2UB)));
            TIM_TCCR2 |= GLOBAL_ptrToTimer2UserConf->operationModeTIM2 ; 
            while (TIM_ASSR2 & ((1<<ASSR2_TCR2UB)));


        }
        else
        {

            // STEP1: CLR TCCR2 
            TIM_TCCR2 = 0  ;    
            // step2: SET MODE
            TIM_TCCR2 |= GLOBAL_ptrToTimer2UserConf->operationModeTIM2 ; 
        
            CLR_BIT(TIM_ASSR2,ASSR2_AS2);

        }

        switch(GLOBAL_ptrToTimer2UserConf->clkSourceAndPrescalerTimer2)
        {
            case TIMER2_DISABLE:     Timer2Prescaler = 0 ; 			    break ;
            case TIMER2_CLK_OVR_1:	Timer2Prescaler = 1 ; 			    break ; 
            case TIMER2_CLK_OVR_8:	Timer2Prescaler = 8 ;				break ; 
            case TIMER2_CLK_OVR_32: Timer2Prescaler = 32	;			break ; 
            case TIMER2_CLK_OVR_64: Timer2Prescaler = 64	;			break ; 	
            case TIMER2_CLK_OVR_128: Timer2Prescaler = 128	;			break ; 	
            case TIMER2_CLK_OVR_256:	Timer2Prescaler = 256	;			break ; 
            case TIMER2_CLK_OVR_1024: Timer2Prescaler = 1024	;			break ; 	
            default: break ;  
        }

    }
    else
    {
        // <!TODO> ERROR IN CONFIG POINTER 
    }    
}
void Timer_voidInitTimer1(Timer1Config_t *ptr_userConfig)
{
    if(ptr_userConfig != NULL)
    { 
        // Get Parm of user selected 
        GLOBAL_ptrToTimer1UserConf = ptr_userConfig ; 
        // Normal Mode Only 
        TIM_TCCR1A = 0  ; 
        // Disable Timer Module 
            // by default disable 
		//Set Global Variable 
		switch(GLOBAL_ptrToTimer1UserConf->clockSourceAndPrescalerTimer1)
		{
			case TIMER1_DISABLE:     Timer1Prescaler = 0 ; 			    break ;
			case TIMER1_CLK_OVR_1:	Timer1Prescaler = 1 ; 			    break ; 
			case TIMER1_CLK_OVR_8:	Timer1Prescaler = 8 ;				break ; 
			case TIMER1_CLK_OVR_256:	Timer1Prescaler = 256	;			break ; 
			case TIMER1_CLK_OVR_1024: Timer1Prescaler = 1024	;			break ; 	
			default: break ;  
		}
    }
    else
    {
        // <!TODO> ERROR IN CONFIG POINTER 
    }   
}
void Timer_voidStartTimer(TimerSelection_t copyTimerIndex)
{
    switch (copyTimerIndex)
    {
    case TIMER0: 
        {
            if(GLOBAL_ptrToTimer0UserConf != NULL)
            {
                // Set Clock With Prescaler 
                TIM_TCCR0 &= ~(0x7) ; 
                TIM_TCCR0 |= GLOBAL_ptrToTimer0UserConf->clockSourceAndPrescalerTimer0 ;
            }
            else
            {
                // <!TODO> ERROR IN CONFIG POINTER 
            }
        }
        break;
    case TIMER1: 
        {
            if(GLOBAL_ptrToTimer1UserConf != NULL)
            {
                // Set Clock With Prescaler 
                TIM_TCCR1B &= ~(0x7) ; 
                TIM_TCCR1B |= GLOBAL_ptrToTimer1UserConf->clockSourceAndPrescalerTimer1 ;
            }
            else
            {
                // <!TODO> ERROR IN CONFIG POINTER 
            }    
        }
        break;
    case TIMER2: 
        {
            if(GLOBAL_ptrToTimer2UserConf != NULL)
            {
                // Set Clock With Prescaler 
                TIM_TCCR2 &= ~(0x7) ; 
                TIM_TCCR2 |= GLOBAL_ptrToTimer2UserConf->clkSourceAndPrescalerTimer2 ;
                if(GLOBAL_ptrToTimer2UserConf->clkSourceOfTimer2 != TIMER2_MAIN_SYS_IO_CLK)
                {
                    // Wait for TCCR2
                    while (TIM_ASSR2 & ((1<<ASSR2_TCR2UB)));
                }
                
            }
            else
            {
                // <!TODO> ERROR IN CONFIG POINTER 
    }
        }
        break;
    default:
        break;
    }

}

void Timer_voidStopTimer(TimerSelection_t copyTimerIndex)
{
    switch (copyTimerIndex)
    {
    case TIMER0: 
        {
         TIM_TCCR0 &= ~(0x7) ; 
        }
        break;
    case TIMER1:
        TIM_TCCR1B &= ~(0x7) ; 
        break;
    case TIMER2: 
        {    
            TIM_TCCR2 &= ~(0x7) ; 
            if(GLOBAL_ptrToTimer2UserConf->clkSourceOfTimer2 != TIMER2_MAIN_SYS_IO_CLK)
            {
                // Wait for TCCR2
                while (TIM_ASSR2 & ((1<<ASSR2_TCR2UB)));
            }
        }
        break;
    default:
        break;
    }
}

void Timer_u8GetCounterTimer(TimerSelection_t copyTimerIndex,u16 *pu8GetTicks)
{
    switch (copyTimerIndex)
    {
    case TIMER0: 
        {
            if(GLOBAL_ptrToTimer0UserConf != NULL)
            {
                *pu8GetTicks =TIM_TCNT0 ; 
            }
            else
            {
                // <!TODO> ERROR IN CONFIG POINTER 
            } 
        }
        break;
    case TIMER1: 
        {
            // Get Statues 
            u8 SREG_STAT = SREG ; 
            // Disable Interrupt 
            CLR_BIT(SREG,SREG_GIE);
            // Get Value 
            *pu8GetTicks= TIM_TCNT1 ;
            // Return Status 
            SREG = SREG_STAT ; 
        }
        break;
    case TIMER2: 
        {    
            if(GLOBAL_ptrToTimer2UserConf != NULL)
            {
                *pu8GetTicks =TIM_TCNT2 ; 
            }
            else
            {
                // <!TODO> ERROR IN CONFIG POINTER 
            } 
        }
        break;
    default:
        break;
    }
}

void Timer_u8SetCounterTimer(TimerSelection_t copyTimerIndex , u16 copy_u8SetTicks)
{
    switch (copyTimerIndex)
    {
    case TIMER0: 
        {
            if(GLOBAL_ptrToTimer0UserConf != NULL)
            {
                TIM_TCNT0 = (u8)copy_u8SetTicks  ; 
            }
            else
            {
                // <!TODO> ERROR IN CONFIG POINTER 
            } 
        }
        break;
    case TIMER1: 
        {
            // Get Statues 
            u8 SREG_STAT = SREG ; 
            // Disable Interrupt 
            CLR_BIT(SREG,SREG_GIE);
            // Set Value 
            TIM_TCNT1 = (copy_u8SetTicks) ; 
           // Return Status 
            SREG = SREG_STAT ; 
        }
        break;
    case TIMER2: 
        {    
            if(GLOBAL_ptrToTimer2UserConf != NULL)
            {
                TIM_TCNT2 =  (u8)copy_u8SetTicks ;  
                if(GLOBAL_ptrToTimer2UserConf->clkSourceOfTimer2 != TIMER2_MAIN_SYS_IO_CLK)
                {
                    // Wait for TCCR2
                    while (TIM_ASSR2 & ((1<<ASSR2_TCN2UB)));
                }
            }
            else
            {
                // <!TODO> ERROR IN CONFIG POINTER 
            } 
        }
        break;
    default:
        break;
    }
  
}
void Timer_voidSetBusyWait_ms(TimerSelection_t timerNum , u16 Copy_u16DelayMs)
{
    float LOCAL_floatTicks = 0;
    u32 LOCAL_u32Ticks = 0;	
    u32 LOC_u16OverflowsCount  ; 
    u8 Loc_u8IntState ; 
    u16 LOC_u8NumOfOverflows ; 
	 
    switch (timerNum)
    {
    case TIMER0:
	{
        LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ; 
        LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
        LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16DelayMs ;
        LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
		// Get Interrupt Status 
		Loc_u8IntState = GET_BIT(TIM_TIMSK,TIMSK_TOIE0);
		CLR_BIT(TIM_TIMSK,TIMSK_TOIE1); 
        // Restart Timer 
        Timer_voidStopTimer(TIMER0);
        Timer_voidStartTimer(TIMER0);
        // Stuck Until Reach
        if(LOCAL_u32Ticks <= _8_BIT_OV_) 
        {
            while (TIM_TCNT0 < (u8)LOCAL_u32Ticks );
        }
        else
        {
            LOC_u16OverflowsCount = 0 ; 
            // Need to Calc Number of Overflows 
            LOC_u8NumOfOverflows = LOCAL_u32Ticks/ _8_BIT_OV_ ; 
            while (LOC_u8NumOfOverflows > LOC_u16OverflowsCount ) 
            {
                WAIT_OV_FLAG(TIM_TIFR,TIFR_TOV0); /* Wait for TOV0 to roll over */
                //Clear Flag
                TIM_TIFR = 0x01;  // Can't use |= that implies a read-modify-write
                // Increas LOC_u16OverflowsCount 
                LOC_u16OverflowsCount++ ; 
            }
        }
		// Set int state 
		TIM_TIMSK |= (Loc_u8IntState << TIMSK_TOIE0);
        break;
	}
    case TIMER1:

        /* code */
        break;
    case TIMER2:
    {
        if(GLOBAL_ptrToTimer2UserConf->clkSourceOfTimer2 != TIMER2_MAIN_SYS_IO_CLK)
        {
            LOCAL_floatTicks = (u32)TIMER2_EXTERNAL_CLK_VAL_IN_HZ/(u32)(TIM_GENERATE_1_MS) ;          
        }
        else
        {
            LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ; 
        }
        LOCAL_floatTicks = (LOCAL_floatTicks/Timer2Prescaler);
        LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16DelayMs ;
        LOCAL_u32Ticks = (u32)LOCAL_floatTicks ;
        // Get Interrupt Status 
        Loc_u8IntState = GET_BIT(TIM_TIMSK,TIMSK_TOIE2);
        CLR_BIT(TIM_TIMSK,TIMSK_TOIE2); 
        // Restart Timer 
        Timer_voidStopTimer(TIMER2);
        Timer_voidStartTimer(TIMER2);
        // Stuck Until Reach
        if(LOCAL_u32Ticks <= _8_BIT_OV_) 
        {
            while (TIM_TCNT2 < (u8)LOCAL_u32Ticks );
        }
        else
        {
            LOC_u16OverflowsCount = 0 ; 
            // Need to Calc Number of Overflows 
            LOC_u8NumOfOverflows = LOCAL_u32Ticks/ _8_BIT_OV_ ; 
            while (LOC_u8NumOfOverflows > LOC_u16OverflowsCount ) 
            {
                WAIT_OV_FLAG(TIM_TIFR,TIFR_TOV2); /* Wait for TOV2 to roll over */
                //Clear Flag
                TIM_TIFR = 0x40;  // Can't use |= that implies a read-modify-write
                // Increas LOC_u16OverflowsCount 
                LOC_u16OverflowsCount++ ; 
            }
        }
		// Set int state 
		TIM_TIMSK |= (Loc_u8IntState << TIMSK_TOIE2);
		
        break;
    }

    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    }
}
void Timer_voidSetBusyWait_us(TimerSelection_t timerNum, u16 Copy_u16DelayUs)
{
	float LOCAL_floatTicks ; 
	u32 LOCAL_u32Ticks ; 
    u32 LOC_u16OverflowsCount ; 
	u8 Loc_u8IntState = 0 ; 
	u16 LOC_u8NumOfOverflows; 
    switch (timerNum)
    {
    case TIMER0:
	{
		LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_US) ; 
		LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
		LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16DelayUs ;
		LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
		// Get Interrupt Status 
		Loc_u8IntState = GET_BIT(TIM_TIMSK,TIMSK_TOIE0);
		CLR_BIT(TIM_TIMSK,TIMSK_TOIE0); 
        // Restart Timer 
        Timer_voidStopTimer(TIMER0);
        Timer_u8SetCounterTimer(TIMER0,0); 
        Timer_voidStartTimer(TIMER0);
        // Stuck Until Reach
        if(LOCAL_u32Ticks <= _8_BIT_OV_) 
        {
            while (TIM_TCNT0 < (u8)LOCAL_u32Ticks );
        }
        else
        {
            LOC_u16OverflowsCount = 0 ; 
            // Need to Calc Number of Overflows 
            LOC_u8NumOfOverflows = LOCAL_u32Ticks/ _8_BIT_OV_ ; 
            while (LOC_u8NumOfOverflows > LOC_u16OverflowsCount ) 
            {
                WAIT_OV_FLAG(TIM_TIFR,TIFR_TOV0); /* Wait for TOV0 to roll over */
                //Clear Flag
                TIM_TIFR = 0x01;  // Can't use |= that implies a read-modify-write
                // Increas LOC_u16OverflowsCount 
                LOC_u16OverflowsCount++ ; 
            }
        }
		// Set int state 
		TIM_TIMSK |= (Loc_u8IntState << TIMSK_TOIE0);
        break;
	}
    case TIMER1:
        /* code */
        break;
    case TIMER2:
	{
        if(GLOBAL_ptrToTimer2UserConf->clkSourceOfTimer2 != TIMER2_MAIN_SYS_IO_CLK)
        {	
			// <!ERROR> : Unsupported Feature
        }
        else
        {
            LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_US) ; 
			LOCAL_floatTicks = (LOCAL_floatTicks/Timer2Prescaler);
			LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16DelayUs ;
			LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
			// Get Interrupt Status 
			Loc_u8IntState = GET_BIT(TIM_TIMSK,TIMSK_TOIE2);
			CLR_BIT(TIM_TIMSK,TIMSK_TOIE2); 
			// Restart Timer 
			Timer_voidStopTimer(TIMER2);
			Timer_u8SetCounterTimer(TIMER2,0); 
			Timer_voidStartTimer(TIMER2);
			// Stuck Until Reach
			if(LOCAL_u32Ticks <= _8_BIT_OV_) 
			{
				while (TIM_TCNT2 < (u8)LOCAL_u32Ticks );
			}
			else
			{
				LOC_u16OverflowsCount = 0 ; 
				// Need to Calc Number of Overflows 
				LOC_u8NumOfOverflows = LOCAL_u32Ticks/ _8_BIT_OV_ ; 
				while (LOC_u8NumOfOverflows > LOC_u16OverflowsCount ) 
				{
					WAIT_OV_FLAG(TIM_TIFR,TIFR_TOV2); /* Wait for TOV2 to roll over */
					//Clear Flag
					TIM_TIFR = 0x80 ;  // Can't use |= that implies a read-modify-write
					// Increas LOC_u16OverflowsCount 
					LOC_u16OverflowsCount++ ; 
				}
			}

        }
		// Set int state 
		TIM_TIMSK |= (Loc_u8IntState << TIMSK_TOIE2);
        break;

	}

    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    }  

}
void Timer_voidSetOVInterrupState(TimerSelection_t copyTimerIndex , TIM_OverflowInterrupt copyTimerState)
{
    switch (copyTimerIndex)
    {
    case TIMER0:
		CLR_BIT(TIM_TIMSK,TIMSK_TOIE0); 
		TIM_TIMSK |= (copyTimerState << TIMSK_TOIE0 ) ; 
        break;
    case TIMER1:
		CLR_BIT(TIM_TIMSK,TIMSK_TOIE1); 
		TIM_TIMSK |= (copyTimerState << TIMSK_TOIE1 ) ;         break;
    case TIMER2:
		CLR_BIT(TIM_TIMSK,TIMSK_TOIE2); 
		TIM_TIMSK |= (copyTimerState << TIMSK_TOIE2 ) ; 
        break;
    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    } 	
}
void Timer_voidSetOverflowCallback(TimerSelection_t copyTimerIndex,ptr_VoidFcn ovflowCallback)
{
	if(ovflowCallback != NULL) 
	{
		//	Set Fcn 
		switch (copyTimerIndex)
		{
		case TIMER0:
			TIMER0_OV_CallBack = ovflowCallback;
			break;
		case TIMER1:
            TIMER1_OV_CallBack = ovflowCallback;
			break ;
		case TIMER2:
            TIMER2_OV_CallBack = ovflowCallback;
			break;
		default:
			// <!TODO> ERROR IN Timer Selection
			break;
		} 	

	}
}


/*      Start CTC Functions     */
void Timer_voidSetCompareValue(TimerSelection_t copyTimerIndex , u16 copy_u16CompVal)
{
		//	Set Fcn 
		switch (copyTimerIndex)
		{
		case TIMER0:
            if(copy_u16CompVal >=0 && copy_u16CompVal <= _8_BIT_OV_)
            {
                TIM_OCR0 = copy_u16CompVal ; 
            }
			break;
		case TIMER1:
			break ;
		case TIMER2:
			break;
		default:
			// <!TODO> ERROR IN Timer Selection
			break;
		} 	
}
void Timer_voidSetCompareMatchCallback(TimerSelection_t copyTimerIndex , ptr_VoidFcn cmpMatchCallback)
{
	if(cmpMatchCallback != NULL) 
	{
		//	Set Fcn 
		switch (copyTimerIndex)
		{
		case TIMER0:
                TIMER0_CTC_CallBack_Periodic = cmpMatchCallback ; 
			break;
		case TIMER1:
			break ;
		case TIMER2:
			break;
		default:
			// <!TODO> ERROR IN Timer Selection
			break;
		} 	

	}
}

void Timer_voidSetCompMatchInterrupState(TimerSelection_t copyTimerIndex , TIM_OverflowInterrupt copyTimerState)
{
    switch (copyTimerIndex)
    {
    case TIMER0:
		CLR_BIT(TIM_TIMSK,TIMSK_OCIE0); 
		// enable compare interrupt
		TIM_TIMSK |= (copyTimerState << TIMSK_OCIE0); 
        break;
    case TIMER1:
	  break;
    case TIMER2:
	    break;
    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    } 	
}

void Timer_voidSetIntervalSingleMS(TimerSelection_t copyTimerIndex , u16 Copy_u16IntervalTimeMS , ptr_VoidFcn intervalCallback)
{
    /*  Switch To Single Mode */
    Global_u8Timer0Interval = SINGLE ; 
    switch (copyTimerIndex)
    {
    case TIMER0:
    {
        TIMER0_CTC_CallBack_Single = intervalCallback ; 
        /** Get Number of Ticks */
        float LOCAL_floatTicks = 0;
        u32 LOCAL_u32Ticks = 0;
        u16 LOC_u16GetBestFitValue = 0 ; 
        LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ; 
        LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
        LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16IntervalTimeMS ;
        LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
        /*  Get Best Fit Overflow Vlaue */
        LOC_u16GetBestFitValue = Timer_u16GetBestFitValue(LOCAL_u32Ticks , _8_BIT_OV_); 
        /*  Generate Interrupt every OCR0 = LOCAL_u32Ticks / LOC_u16GetBestFitValue and remind LOCAL_u32Ticks % LOC_u16GetBestFitValue   */ 
        Global_u16NumberOfOverflowsInCTC = LOCAL_u32Ticks / LOC_u16GetBestFitValue ;       
        /*  Set OCR0 to   LOC_u16GetBestFitValue */ 
        TIM_OCR0 = LOC_u16GetBestFitValue ; 
        break; 
    } 
    case TIMER1:
        break; 
    case TIMER2:
        break;
    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    }
    /*  Enable CTC Interrupt    */
    Timer_voidSetCompMatchInterrupState(copyTimerIndex , TIM_OCM_ENABLE); 

}
void Timer_voidSetIntervalPeriodicMS(TimerSelection_t copyTimerIndex , u16 Copy_u16IntervalTimeMS , ptr_VoidFcn intervalCallback)
{
    /*  Switch To Single Mode */
    Global_u8Timer0Interval = PERIODIC ;
    switch (copyTimerIndex)
    {
    case TIMER0:
    {
        TIMER0_CTC_CallBack_Periodic = intervalCallback ; 
        /** Get Number of Ticks */
        float LOCAL_floatTicks = 0;
        u32 LOCAL_u32Ticks = 0;
        u16 LOC_u16GetBestFitValue = 0 ; 
        LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ; 
        LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
        LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16IntervalTimeMS ;
        LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
        /*  Get Best Fit Overflow Vlaue */
        LOC_u16GetBestFitValue = Timer_u16GetBestFitValue(LOCAL_u32Ticks , _8_BIT_OV_); 
        /*  Generate Interrupt every OCR0 = LOCAL_u32Ticks / LOC_u16GetBestFitValue and remind LOCAL_u32Ticks % LOC_u16GetBestFitValue   */ 
        Global_u16NumberOfOverflowsInCTC = LOCAL_u32Ticks / LOC_u16GetBestFitValue ;  
        /*  Set OCR0 to   LOC_u16GetBestFitValue */ 
        TIM_OCR0 = LOC_u16GetBestFitValue ; 
        break; 
    } 
    case TIMER1:
        break; 
    case TIMER2:
        break;
    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    }
    /*  Enable CTC Interrupt    */
    Timer_voidSetCompMatchInterrupState(copyTimerIndex , TIM_OCM_ENABLE); 
}


void Timer_voidOutputPinMode(TimerSelection_t copyTimerIndex, TIM0_CompereOutputPin copy_stateOfOCRPin)
{
    switch (copyTimerIndex)
    {
    case TIMER0:
    {
        // Clear COMM00 COM01 
        TIM_TCCR0 &= ~(0b11 << TCCR0_COM00); 
        TIM_TCCR0 |= copy_stateOfOCRPin ; 
        break; 
    } 
    case TIMER1:
        break; 
    case TIMER2:
        break;
    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    }    
}

void Timer_voidGenerateSignal(TimerSelection_t copyTimerIndex , u8 copy_u8FreqInHz , u8 copy_u8DutyCycle)
{
    /*  Switch To Single Mode */
    Global_u8Timer0Interval = PWM ;
    switch (copyTimerIndex)
    {
    case TIMER0:
    {
        // Time in ms 
        u16 LOC_i16TimeinMs = (1000/copy_u8FreqInHz) ;
        u8 LOC_u16Ton = 0 ; 
        u8 LOC_u16Toff = 0 ;  

        // Ton+Toff = 1/copy_u8FreqInHz ,   DC = Ton / (Ton+Toff) 
        LOC_u16Toff = (LOC_i16TimeinMs * (100 - copy_u8DutyCycle))/100 ; 
        LOC_u16Ton = LOC_i16TimeinMs - LOC_u16Toff ; 

        /*  Get Ton Ticks    */ 
        float LOCAL_floatTicks = 0;
        LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ; 
        LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
        LOCAL_floatTicks = LOCAL_floatTicks * (u32)LOC_u16Ton ;
        Global_u8PWM_Ton = (u32)LOCAL_floatTicks ; 
        /*  Get Toff Ticks    */ 
        LOCAL_floatTicks = 0;
        LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ; 
        LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
        LOCAL_floatTicks = LOCAL_floatTicks * (u32)LOC_u16Toff ;
        Global_u8PWM_Toff = (u32)LOCAL_floatTicks ; 
        /*  OC0 Output Toggle State with each Interrupt  */ 
        Timer_voidOutputPinMode(TIMER0 , TIM0_OC0_TOGGLE); 
        /* Set Ton  */
        TIM_OCR0 = Global_u8PWM_Toff ;
        /*  Set Next State Flag */ 
        Global_u8PWM_State = PWM_HIGH_PER ; 
        break; 
    } 
    case TIMER1:
        break; 
    case TIMER2:
        break;
    default:
        // <!TODO> ERROR IN Timer Selection
        break;
    }
   /*  Enable CTC Interrupt    */
   Timer_voidSetCompMatchInterrupState(copyTimerIndex , TIM_OCM_ENABLE);  
}

void Timer_voidInputCaptureTicksSynch(TimerSelection_t copyTimerIndex,  TIM1_EventCapturing copy_TriggerEvent , u16 *copyCounts )
{
    if(copyTimerIndex == TIMER1 )
    {
        if(GLOBAL_ptrToTimer1UserConf != NULL)
        {
            u16 CounterVal = 0 ,CounterVal2 = 0  ; 
            //Clear Input Capture Flag 
            TIM_TIFR = (1<< TIFR_ICF1) ; 
            // Select Event Trigger 
            TIM_TCCR1B |= (1<< copy_TriggerEvent ) ; 
			// Clear TCNT
			TIM_TCNT1 = 0 ; 
            // Wait Flag
            while (GET_BIT(TIM_TIFR,TIFR_ICF1) == 0);
            // Get Value
            CounterVal = TIM_ICR1 ;
            // Cleat Flag
            TIM_TIFR = (1<< TIFR_ICF1); 
            // Wait until next edge 
            while (GET_BIT(TIM_TIFR,TIFR_ICF1) == 0);
            // Get Second Value
            CounterVal2 = TIM_ICR1  ; 
			// To Avoid Overflow
			if(CounterVal2 > CounterVal)
			{
            // Get Difference 
            *copyCounts = CounterVal2 - CounterVal  ; 
			}

        }
        else
        {
            // <TODO ERROR> Null Pointer to Configuration
        }
    }
    else
    {
        // <TODO ERROR> This Feature supported only for timer1
    }
}
void Timer_voidInputCaptureInterrupt(TimerSelection_t copyTimerIndex,  TIM1_EventCapturing copy_TriggerEvent , ptr_VoidFcn setCallBackFn)
{
    if(copyTimerIndex == TIMER1 )
    {
        if(GLOBAL_ptrToTimer1UserConf != NULL)
        {
			// Set Callback
			TIMER1_IC_Callback = setCallBackFn ; 
            //Clear Input Capture Flag 
            TIM_TIFR = (1<< TIFR_ICF1) ; 
            // Select Event Trigger 
            TIM_TCCR1B |= (1<< copy_TriggerEvent ) ; 
			// Clear TCNT
			TIM_TCNT1 = 0 ; 
        }
        else
        {
            // <TODO ERROR> Null Pointer to Configuration
        }
    }
    else
    {
        // <TODO ERROR> This Feature supported only for timer1
    }
}
void Timer_voidGetFlagsRegStatus(u8 * ptr_u8Reg)
{
	* ptr_u8Reg = TIM_TIFR ; 
}
/******************************************************************************
* Private Function Definitions
*******************************************************************************/
void __vector_19(void)
{
    static u16 copy_u16NumberofOverflows = 0 ;  
    if(Global_u8Timer0Interval == PERIODIC)
    {
        // Default 
       if(copy_u16NumberofOverflows < Global_u16NumberOfOverflowsInCTC)
        {
            copy_u16NumberofOverflows++  ;     
        }
        else 
        {
            // Call ISR 
            TIMER0_CTC_CallBack_Periodic(); 
            //  Reset Number overflow
            copy_u16NumberofOverflows = 0 ; 
        }   
    }
    else if(Global_u8Timer0Interval == SINGLE)
    {
        //Single 
        if(copy_u16NumberofOverflows < Global_u16NumberOfOverflowsInCTC)
        {
            copy_u16NumberofOverflows++  ;     
        }
        else 
        {
            // Call ISR 
            TIMER0_CTC_CallBack_Single(); 
            //  Reset Number overflow
            copy_u16NumberofOverflows = 0 ; 
			Timer_voidStopTimer(TIMER0);
        }
    }
    else
    {
        // PWM Mode
        if(Global_u8PWM_State == PWM_HIGH_PER)
        {
            /*  Load OCR0 with Tlow */
            TIM_OCR0 = Global_u8PWM_Toff ;
            /*  Set Next State Flag */ 
            Global_u8PWM_State = PWM_LOW_PER ; 
        }
        else
        {            
            /*  Load OCR0 with Tlow */
            TIM_OCR0 = Global_u8PWM_Ton ;
            /*  Set Next State Flag */ 
            Global_u8PWM_State = PWM_HIGH_PER ;
        }
    }
    //Clear Compare Match Interrupt Fag
    TIM_TIFR = (1<<TIFR_OCF0);
}

void __vector_9(void)
{
	TIMER0_OV_CallBack();


    //Clear OverFlow flag
    TIM_TIFR=(1<<TIFR_TOV0);
}



u16 Timer_u16GetBestFitValue(u32 copy_u32NumberofTicks , u16 copy_u16MaxCounterVal)
{
    u16 LOC_u16Counter = 0 ;
    u8 LOC_u8Index = 0 ;
    u16 resultValues[20] ;
    /*  Get Best Fit Value  */
    for(LOC_u16Counter = (copy_u16MaxCounterVal- 20) ; LOC_u16Counter <= copy_u16MaxCounterVal ; LOC_u16Counter++ )
    {
        resultValues[LOC_u8Index] = copy_u32NumberofTicks % LOC_u16Counter ;
        LOC_u8Index++ ;
    }
    /*  Get Min Value */
    u16 copy_u16MinValue = resultValues[0] ;
    for(LOC_u16Counter = 0 ; LOC_u16Counter < 20 ; LOC_u16Counter++ )
    {
        if(copy_u16MinValue > resultValues[LOC_u16Counter])
        {
           copy_u16MinValue =  resultValues[LOC_u16Counter] ;
           LOC_u8Index = LOC_u16Counter ;
        }
    }
    return (copy_u16MaxCounterVal- 20 + LOC_u8Index ) ;
}
void __vector_8(void)
{
    TIMER1_OV_CallBack(); 
    //Clear OverFlow flag
    TIM_TIFR=(1<<TIFR_TOV1);
}
void __vector_4(void)
{
    TIMER2_OV_CallBack(); 
    //Clear OverFlow flag
    TIM_TIFR=(1<<TIFR_TOV2);
}
void __vector_5(void)
{
	TIMER1_IC_Callback();
    TIM_TIFR=(1<<TIFR_ICF1);
}
/************************************* End of File ******************************************/
