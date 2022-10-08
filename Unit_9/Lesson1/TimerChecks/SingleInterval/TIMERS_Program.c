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



/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static Timer0Config_t* GLOBAL_ptrToTimer0UserConf ; 
static u16 Timer0Prescaler = 0 ; 
static u8 Global_u8Timer0Interval = PERIODIC  ; 
static u16 Global_u16NumberOfOverflowsInCTC = 0 ; 

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
			case TIMER_DISABLE:     Timer0Prescaler = 0 ; 			    break ;
			case TIMER_CLK_OVR_1:	Timer0Prescaler = 1 ; 			    break ; 
			case TIMER_CLK_OVR_8:	Timer0Prescaler = 8 ;				break ; 
			case TIMER_CLK_OVR_256:	Timer0Prescaler = 256	;			break ; 
			case TIMER_CLK_OVR_1024: Timer0Prescaler = 1024	;			break ; 	
			default: break ;  
		}
    }
    else
    {
        // <!TODO> ERROR IN CONFIG POINTER 
    }
}
void Timer_voidStartTimer0(void)
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
void Timer_voidStopTimer0(void)
{
     TIM_TCCR0 &= ~(0x7) ; 
}

void Timer_u8GetCounterTimer0(u8 *pu8GetTicks)
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

void Timer_u8SetCounterTimer0(u8 copy_u8SetTicks)
{
    if(GLOBAL_ptrToTimer0UserConf != NULL)
    {
       TIM_TCNT0 =  copy_u8SetTicks  ; 
    }
    else
    {
        // <!TODO> ERROR IN CONFIG POINTER 
    }   
}
void Timer_voidSetBusyWait_ms(TimerSelection_t timerNum , u16 Copy_u16DelayMs)
{
    float LOCAL_floatTicks = 0;
    u32 LOCAL_u32Ticks = 0;
	
    u32 LOC_u16OverflowsCount ; 
	LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ; 
	LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
	LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16DelayMs ;
	LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
	 
    switch (timerNum)
    {
    case TIMER0:
	{
		// Get Interrupt Status 
		u8 Loc_u8IntState = GET_BIT(TIM_TIMSK,TIMSK_TOIE0);
		CLR_BIT(TIM_TIMSK,TIMSK_TOIE1); 
        // Restart Timer 
        Timer_voidStopTimer0();
        Timer_voidStartTimer0();
        // Stuck Until Reach
        if(LOCAL_u32Ticks <= _8_BIT_OV_) 
        {
            while (TIM_TCNT0 < (u8)LOCAL_u32Ticks );
        }
        else
        {
            LOC_u16OverflowsCount = 0 ; 
            // Need to Calc Number of Overflows 
            u16 LOC_u8NumOfOverflows = LOCAL_u32Ticks/ _8_BIT_OV_ ; 
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
        /* code */
        break;
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
	LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_US) ; 
	LOCAL_floatTicks = (LOCAL_floatTicks/Timer0Prescaler);
	LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16DelayUs ;
	LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
	 
    switch (timerNum)
    {
    case TIMER0:
	{
		// Get Interrupt Status 
		u8 Loc_u8IntState = GET_BIT(TIM_TIMSK,TIMSK_TOIE0);
		CLR_BIT(TIM_TIMSK,TIMSK_TOIE1); 
        // Restart Timer 
        Timer_voidStopTimer0();
        Timer_u8SetCounterTimer0(0); 
        Timer_voidStartTimer0();
        // Stuck Until Reach
        if(LOCAL_u32Ticks <= _8_BIT_OV_) 
        {
            while (TIM_TCNT0 < (u8)LOCAL_u32Ticks );
        }
        else
        {
            LOC_u16OverflowsCount = 0 ; 
            // Need to Calc Number of Overflows 
            u16 LOC_u8NumOfOverflows = LOCAL_u32Ticks/ _8_BIT_OV_ ; 
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
        /* code */
        break;
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
			break ;
		case TIMER2:
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
    else
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
			Timer_voidStopTimer0();
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
/**
static u32 Timer_u32ConfigIntervl(u16 copy_TimerPrescaler ,u16 Copy_u16Delay , u8 copy_u8Unit)
{
    float LOCAL_floatTicks ; 
	u32 LOCAL_u32Ticks ; 
    u32 LOC_u16OverflowsCount ; 
    if(copy_u8Unit == PRIV_US)
    {
    	LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_US) ;       
    }
    else
    {
        LOCAL_floatTicks = (u32)CPU_CLOCK_FREQ/(u32)(TIM_GENERATE_1_MS) ;
    }
	LOCAL_floatTicks = (LOCAL_floatTicks/copy_TimerPrescaler);
	LOCAL_floatTicks = LOCAL_floatTicks * (u32)Copy_u16Delay ;
	LOCAL_u32Ticks = (u32)LOCAL_floatTicks ; 
}
**/
/************************************* End of File ******************************************/