/**
* @file OS_program.c
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
#include "STK_interface.h"
#include "OS_interface.h"
#include "OS_config.h"
#include "OS_private.h"










/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

// 1ms
#define TICK_TIME 1000  

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static TASK_TCB SYS_TASKS[ TASK_NUMBERS ] = { NULL };




/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/
void RTOS_voidStart( void ){
	/* To initialize the STK driver */
	STK_voidInit();
	/* To pass the scheduer function to the systick ISR */
	STK_voidSetIntervalPeriodic(TICK_TIME , RTOS_voidSchedular );
}
void RTOS_voidCreateTask( u8 Copy_u8ID , u16 Copy_u16Periodicity , void (*Copy_pvTask)( void ) , u16 Copy_u16FirstDelay )
{
	if( SYS_TASKS[ Copy_u8ID ].TaskHandler == NULL ){

		SYS_TASKS[ Copy_u8ID ].Copy_u16Periodicity           = Copy_u16Periodicity ;
		SYS_TASKS[ Copy_u8ID ].TaskHandler                   = Copy_pvTask         ;
		SYS_TASKS[ Copy_u8ID ].Copy_u16FirstDelay            = Copy_u16FirstDelay  ;
		SYS_TASKS[ Copy_u8ID ].Copy_u8State                  = TASK_READY          ;

	}
	else{

		/* Do No Thing */

	}


}

void RTOS_voidSuspendTask ( u8 Copy_u8TaskID )
{
    	SYS_TASKS[ Copy_u8TaskID ].Copy_u8State = TASK_SUSPEND ;

}
void RTOS_voidResumeTask  ( u8 Copy_u8TaskID )
{
	SYS_TASKS[ Copy_u8TaskID ].Copy_u8State = TASK_READY   ;

}
void RTOS_voidKillTask  ( u8 Copy_u8TaskID )
{
	SYS_TASKS[ Copy_u8TaskID ].TaskHandler = NULL ;

}

/*******************************************************************************************/

void RTOS_voidSchedular( void ){

	u8 LOC_u8TaskCounter      ;

	for( LOC_u8TaskCounter = 0 ; LOC_u8TaskCounter < TASK_NUMBERS ; LOC_u8TaskCounter++ ){

		if( ( SYS_TASKS[ LOC_u8TaskCounter ].TaskHandler != NULL ) && ( SYS_TASKS[ LOC_u8TaskCounter ].Copy_u8State == TASK_READY ) ){

			if( SYS_TASKS[ LOC_u8TaskCounter ].Copy_u16FirstDelay == 0 ){

				SYS_TASKS[ LOC_u8TaskCounter ].Copy_u16FirstDelay = SYS_TASKS[ LOC_u8TaskCounter ].Copy_u16Periodicity - 1 ;
				SYS_TASKS[ LOC_u8TaskCounter ].TaskHandler();

			}
			else{

				SYS_TASKS[ LOC_u8TaskCounter ].Copy_u16FirstDelay--;

			}

		}
		else{

			/* Do No Thing */

		}

	}

}






/************************************* End of File ******************************************/
