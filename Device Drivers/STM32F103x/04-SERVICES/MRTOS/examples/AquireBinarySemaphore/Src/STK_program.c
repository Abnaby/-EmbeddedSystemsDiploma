/**
* @file STK_program.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-30
*
*/
/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "STK_interface.h"
#include "STK_config.h"
#include "STK_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/



/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
ptr_SystickFunc Glob_STKCallback = (void *)0 ;
u8 STK_u8ModeOfInterval ;


/******************************************************************************
* Function Prototypes
*******************************************************************************/



/******************************************************************************
* Private Function Definitions
*******************************************************************************/

u32 STK_u32ConfigInterval(STK_TimeUnit_t timeUnit)
{
    u32 LOC_u32Clock ;
    // Get STK Clock 
    #if   STK_CLK_SOURCE_SELECTION	 == STK_AHB_OVER_8
    LOC_u32Clock = AHB_CLOCK_FREQ / 8;
    #elif STK_CLK_SOURCE_SELECTION == STK_AHB
    LOC_u32Clock = AHB_CLOCK_FREQ;
    #else
	//	#error "Choose Correct Clock Source From Config File"
    #endif
    // Freq of One Tick 
    LOC_u32Clock = LOC_u32Clock / timeUnit ;
    // Return Time Of One Tick
    return LOC_u32Clock ;
}

/******************************************************************************
* Public Function Definitions
*******************************************************************************/

void STK_voidInit(void)
{
    STK->CTRL  = 0;
    STK->CTRL |= STK_CLK_SOURCE_SELECTION;
}
void STK_voidSetBusyWait(u32 Copy_u32TicksNumber)
{
    if (Max_Number_Count > Copy_u32TicksNumber )
    {
        u8 LOC_u8FlagStatus = 0 ;
        /*	WRITING Copy_u32TicksNumber TO LOAD REGISTER	*/
        (STK -> LOAD ) = Copy_u32TicksNumber ;
        /*	ENABLE SYSTIC	*/
        SET_BIT((STK -> CTRL) , 0);
        LOC_u8FlagStatus = GET_BIT((STK -> CTRL) , 16 ) ;
        while( LOC_u8FlagStatus == 0 );
        /* Stop Timer */
        CLR_BIT(STK->CTRL, 0);
        /* Clear LOAD and VAL Regs */
        STK -> LOAD = 0;
        STK -> VAL  = 0;
    }
    else{ /* <!TODO> ERROR */ }
}
void STK_voidStopSystick(void)
{
   CLR_BIT(STK->CTRL, 0);
}
void STK_voidStartSystick(void)
{
   SET_BIT((STK -> CTRL) , 0);
}
void STK_voidSetBusyWait_MS(u16 Copy_u16TimeMS)
{
    /* GET TICK CONFIG  */
    u16 Local_u16Ticks = STK_u32ConfigInterval(STK_MS);
    /*  Clear Val Reg   */
    STK->VAL  = 0;
    /* Load Load Reg    */
    STK->LOAD = Local_u16Ticks * Copy_u16TimeMS;
    /*  Enable Timer    */
    SET_BIT((STK -> CTRL) , 0);
    /*  Wait    */
    while(GET_BIT((STK -> CTRL) , 16 )  == 0 );
    /* Stop Timer */
    CLR_BIT(STK->CTRL, 0);
    /* Clear LOAD and VAL Regs */
    STK -> LOAD = 0;
    STK -> VAL  = 0;
}
void STK_voidSetBusyWait_US(u16 Copy_u16TimeUS)
{
    /* GET TICK CONFIG  */
    u16 Local_u16Ticks = STK_u32ConfigInterval(STK_US);
    /*  Clear Val Reg   */
    STK->VAL  = 0;
    /* Load Load Reg    */
    STK->LOAD = Local_u16Ticks * Copy_u16TimeUS;
    /*  Enable Timer    */
    SET_BIT((STK -> CTRL) , 0);
    /*  Wait    */
    while(GET_BIT((STK -> CTRL) , 16 )  == 0 );
    /* Stop Timer */
    CLR_BIT(STK->CTRL, 0);
    /* Clear LOAD and VAL Regs */
    STK -> LOAD = 0;
    STK -> VAL  = 0;
}
void STK_voidSetIntervalSingle(u32 Copy_u32TicksNumber , ptr_SystickFunc ptr_toFunc) 
{
	if (Max_Number_Count > Copy_u32TicksNumber )
	{
		/*	DISABLE TIMER  */
		CLR_BIT((STK -> CTRL) , 0);
		/*	WRITING Copy_u32TicksNumber TO LOAD REGISTER	*/
		(STK -> LOAD ) = Copy_u32TicksNumber ;
		/*	ENABLE SYSTIC	START TIMER */
		SET_BIT((STK -> CTRL) , 0);
		/*	SAVE CALLBACK	*/
		Glob_STKCallback = ptr_toFunc ; 
		/* Set Mode to Single */
		STK_u8ModeOfInterval = STK_SINGLE_INTERVAL;
		/*	ENABLE INTERRUPT	*/
		SET_BIT((STK -> CTRL) , 1);
	}
	else{ /* <!TODO> ERROR */ }

}
void STK_voidSetIntervalSingle_MS(u16 Copy_u16TimeMS , ptr_SystickFunc ptr_toFunc)
{
    u16 Local_u16Ticks = STK_u32ConfigInterval(STK_MS);
    /*  Clear Val Reg   */
    STK->VAL  = 0;
    /* Load Load Reg    */
    STK->LOAD = Local_u16Ticks * Copy_u16TimeMS;
    /*	SAVE CALLBACK	*/
    Glob_STKCallback = ptr_toFunc ; 
    /* Set Mode to Single */
    STK_u8ModeOfInterval = STK_SINGLE_INTERVAL;
    /*	ENABLE SYSTIC	START TIMER */
    SET_BIT((STK -> CTRL) , 0);
    /*	ENABLE INTERRUPT	*/
    SET_BIT((STK -> CTRL) , 1);

}
void STK_voidSetIntervalSingle_US(u16 Copy_u16TimeUS , ptr_SystickFunc ptr_toFunc)
{
    u16 Local_u16Ticks = STK_u32ConfigInterval(STK_US);
    /*  Clear Val Reg   */
    STK->VAL  = 0;
    /* Load Load Reg    */
    STK->LOAD = Local_u16Ticks * Copy_u16TimeUS;
    /*	SAVE CALLBACK	*/
    Glob_STKCallback = ptr_toFunc ; 
    /* Set Mode to Single */
    STK_u8ModeOfInterval = STK_SINGLE_INTERVAL;
    /*	ENABLE SYSTIC	START TIMER */
    SET_BIT((STK -> CTRL) , 0);
    /*	ENABLE INTERRUPT	*/
    SET_BIT((STK -> CTRL) , 1);
}

void STK_voidSetIntervalPeriodic(u32 Copy_u32TicksNumber , ptr_SystickFunc ptr_toFunc)
{
	if (Max_Number_Count > Copy_u32TicksNumber )
	{
		/*	DISABLE TIMER  */
		CLR_BIT((STK -> CTRL) , 0);
		/*	WRITING Copy_u32TicksNumber TO LOAD REGISTER	*/
		(STK -> LOAD ) = Copy_u32TicksNumber ;
		/*	ENABLE SYSTIC	*/
		SET_BIT((STK -> CTRL) , 0);
		/*	SAVE CALLBACK	*/
		Glob_STKCallback = ptr_toFunc  ;
		/* Set Mode to Single */
		STK_u8ModeOfInterval = STK_PERIOD_INTERVAL;
		/*	ENABLE INTERRUPT	*/
		SET_BIT((STK -> CTRL) , 1);
	}
	else{ /* <!TODO> ERROR */ }
}
void STK_voidSetIntervalPeriodic_MS(u16 Copy_u16TimeMS , ptr_SystickFunc ptr_toFunc)
{
    u16 Local_u16Ticks = STK_u32ConfigInterval(STK_MS);
    /*  Clear Val Reg   */
    STK->VAL  = 0;
    /* Load Load Reg    */
    STK->LOAD = Local_u16Ticks * Copy_u16TimeMS;
    /*	SAVE CALLBACK	*/
    Glob_STKCallback = ptr_toFunc ; 
    /* Set Mode to Single */
    STK_u8ModeOfInterval = STK_PERIOD_INTERVAL;
    /*	ENABLE SYSTIC	START TIMER */
    SET_BIT((STK -> CTRL) , 0);
    /*	ENABLE INTERRUPT	*/
    SET_BIT((STK -> CTRL) , 1);
}
void STK_voidSetIntervalPeriodic_US(u16 Copy_u16TimeUS , ptr_SystickFunc ptr_toFunc)
{
    u16 Local_u16Ticks = STK_u32ConfigInterval(STK_US);
    /*  Clear Val Reg   */
    STK->VAL  = 0;
    /* Load Load Reg    */
    STK->LOAD = Local_u16Ticks * Copy_u16TimeUS;
    /*	SAVE CALLBACK	*/
    Glob_STKCallback = ptr_toFunc ; 
    /* Set Mode to Single */
    STK_u8ModeOfInterval = STK_PERIOD_INTERVAL;
    /*	ENABLE SYSTIC	START TIMER */
    SET_BIT((STK -> CTRL) , 0);
    /*	ENABLE INTERRUPT	*/
    SET_BIT((STK -> CTRL) , 1);
}
u32 STK_u32GetElapsedTicks(void)
{
	u32 LOC_u32ElapsedTicks = 0 ;
	LOC_u32ElapsedTicks = ( STK -> LOAD ) - ( STK -> VAL ) ;
	return LOC_u32ElapsedTicks ; 
}
float STK_u32GetElapsedTime_MS(void)
{
	float LOC_u32ElapsedTime = 0 ;
	LOC_u32ElapsedTime = ( STK -> LOAD ) - ( STK -> VAL ) ;
	//     STK->LOAD = Local_u16Ticks * Copy_u16TimeMS;

    LOC_u32ElapsedTime = LOC_u32ElapsedTime / STK_u32ConfigInterval(STK_MS);
	return LOC_u32ElapsedTime ; 
}
float STK_u32GetElapsedTime_US(void)
{
	float LOC_u32ElapsedTime = 0 ;
	LOC_u32ElapsedTime = ( STK -> LOAD ) - ( STK -> VAL ) ;
    LOC_u32ElapsedTime = LOC_u32ElapsedTime / STK_u32ConfigInterval(STK_US);
	return LOC_u32ElapsedTime ; 
}

u32 STK_u32GetRemainingTicks(void)
{
	u32 LOC_u32RemainingTicks = 0 ;
	LOC_u32RemainingTicks = ( STK -> VAL ) ;
	return LOC_u32RemainingTicks ; 
}
float STK_u32GetRemainingTime_MS(void)
{
	float LOC_u32ElapsedTime = 0 ;
    LOC_u32ElapsedTime = ( STK -> VAL ) / STK_u32ConfigInterval(STK_MS);
	return LOC_u32ElapsedTime ; 
}
float STK_u32GetRemainingTime_US(void)
{
	float LOC_u32ElapsedTime = 0 ;
    LOC_u32ElapsedTime = ( STK -> VAL ) / STK_u32ConfigInterval(STK_US);
	return LOC_u32ElapsedTime ; 
}
/************************************* IRQ  *************************************************/
void SysTick_Handler(void) {
	if (STK_u8ModeOfInterval == STK_SINGLE_INTERVAL)
	{
		/* Disable STK Interrupt */
		CLR_BIT(STK->CTRL, 1);
		/*	Stop Timer	*/
		CLR_BIT(STK->CTRL, 0);
		STK -> LOAD = 0;
		STK -> VAL  = 0;
	}
	/* Callback notification */
	Glob_STKCallback();
	/* Clear interrupt flag */
	(void)GET_BIT(STK->CTRL,16);
}

/************************************* End of File ******************************************/
