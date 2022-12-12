/*
 * APP.c
 *
 * Created: 12/9/2022 11:30:00 PM
 * Author : Abnaby
 */ 


/******************************************************************************
* Includes
*******************************************************************************/
#include "APP.h"

#define _APP_DEBUG_	0

/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define END_SPI_COMMUNICATION	'#'
#define VALID_ID_SYMBOL			'$'
#define MASTER_ACK				'+'
#define WAIT_SYMBOL				'.'
/******************************************************************************
* Typedefs
*******************************************************************************/

typedef enum 
{
	NOT_VALID_ID = '0'	,	
	VALID_ID	= '1'
}ID_Check_t ; 


/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

// 
ID_Check_t Glob_ID_Valid =  NOT_VALID_ID ; 




/******************************************************************************
* private Function Prototypes
*******************************************************************************/

/******************************************************************************
* private Callbacks Definitions
*******************************************************************************/



/******************************************************************************
* private Functions Definitions
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/


/*				MAIN FCNs				*/
void ECU3_Exit_APP_SETUP(void) 
{
	
}


void ECU3_Exit_APP_LOOP(void) 
{

}
	
	

/******************************************************************************
* Callbacks Definitions
*******************************************************************************/

