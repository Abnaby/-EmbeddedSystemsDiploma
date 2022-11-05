/**
* @file DAC.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-11-05
*
*/

/******************************************************************************
* Includes
*******************************************************************************/

#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "COMMON.h"
#include "GPIO_interface.h"
#include "STK_interface.h"
#include "DAC.h"
#include "DAC_song.h"

/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/




/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/



#define DAC_TICK 125
/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

volatile u32 Global_AudioCounter = 0;



/******************************************************************************
* Function Prototypes
*******************************************************************************/
static void DAC_CALLBACK( void );



/******************************************************************************
* Function Definitions
*******************************************************************************/

void AUDIO_voidInit (void)
{
    GPIO_voidSetPortDirection( DAC_PORT , DAC_OUTPUT_MODE );
    STK_voidInit();
    Global_AudioCounter = 0 ; 
}
void DAC_voidPlayAudio(void)
{
    STK_voidSetIntervalPeriodic( DAC_TICK , DAC_CALLBACK );
}

/* pRIVATE */ 
void DAC_CALLBACK( void ){

	GPIO_voidSetPortValue( DAC_PORT  , Song_Array[ Global_AudioCounter ] );
	Global_AudioCounter++;
	if( Global_AudioCounter == Song_Length ){
		Global_AudioCounter = 0;
	}

}


/************************************* End of File ******************************************/
