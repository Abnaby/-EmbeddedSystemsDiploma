/**
* @file _7Segment.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-05
*
*/
/**
* @file _7Segment.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-09-05
*
*/

/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "GPIO_interface.h"
#include "_7Segment.h"




/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/
#define ACCESS_STRUCT(STRUCT,MEMBER) (STRUCT->MEMBER) 



/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/
typedef void (*_7Segment_ptr2func)(_7Segment_Config* ptr_config) ;



/******************************************************************************
* Module Variable Definitions
*******************************************************************************/
static _7Segment_ReturnState _7sevenSegmentErrorChecking(_7Segment_Config* ptr_errorConfig);

static void _7SegZero  (_7Segment_Config* ptr_config) ;
static void _7SegOne   (_7Segment_Config* ptr_config) ;
static void _7SegTwo   (_7Segment_Config* ptr_config) ;
static void _7SegThree (_7Segment_Config* ptr_config) ;
static void _7SegFour  (_7Segment_Config* ptr_config) ;
static void _7SegFive  (_7Segment_Config* ptr_config) ;
static void _7SegSix   (_7Segment_Config* ptr_config) ;
static void _7SegSeven (_7Segment_Config* ptr_config) ;
static void _7SegEight (_7Segment_Config* ptr_config) ;
static void _7SegNine  (_7Segment_Config* ptr_config) ;

static _7Segment_ptr2func arr_ofFunctions[] = {_7SegZero,_7SegOne,_7SegTwo,_7SegThree,_7SegFour,_7SegFive,_7SegSix,_7SegSeven,_7SegEight,_7SegNine};


/******************************************************************************
* Function Prototypes
*******************************************************************************/



/******************************************************************************
* Function Definitions
*******************************************************************************/
_7Segment_ReturnState HAL_7SegmentInit(_7Segment_Config* ptr_config)
{

	u8 LOC_u8Return = NO_ERROR; 
	/*			GPIO Init					*/

	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, OUTPUT) ;
		break ; 
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, OUTPUT) ;
			GPIO_voidSetPinDirection(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, OUTPUT) ;	 
		break;
		default:
			LOC_u8Return= ERROR_OPRTION_MODE_SLCTION ; 
	}


	return 	LOC_u8Return ; 
}

_7Segment_ReturnState HAL_7SegmentWriteNumber(_7Segment_Config* ptr_config, u8 copy_u8Number)
{
	u8 LOC_u8Return = NO_ERROR; 
	LOC_u8Return = _7sevenSegmentErrorChecking(ptr_config) ; 
	/*		ERROR CHECKER		*/
	if(LOC_u8Return != NO_ERROR)
	{
		return LOC_u8Return; 
	}
	/*		GOTO FUNC			*/
	if(copy_u8Number >= 48 && copy_u8Number <= 57)
	{
		copy_u8Number = copy_u8Number - 48 ;
	}
	else if (copy_u8Number >= 0 && copy_u8Number <= 9)
	{
		copy_u8Number = copy_u8Number ; 
	}
	else
	{
		// <!TODO ERROR> Wrong Input
	}
   (*arr_ofFunctions[copy_u8Number])(ptr_config);

	/*		Return Value		*/	
	return LOC_u8Return; 
	
}




_7Segment_ReturnState _7sevenSegmentErrorChecking(_7Segment_Config* ptr_errorConfig)
{
	if (ACCESS_STRUCT(ptr_errorConfig,_7SegmentType) != COMN_ANODE && ACCESS_STRUCT(ptr_errorConfig,_7SegmentType) != COMN_CATHOD) 
	{
		return ERROR_TYPE_SLCTION ;
	}
	else if(ACCESS_STRUCT(ptr_errorConfig,_7SegmentMode) != _7_SEG_NORMAL_MODE &&  ACCESS_STRUCT(ptr_errorConfig,_7SegmentMode) != _7_SEG_4_PIN_IC) 
	{
		return ERROR_OPRTION_MODE_SLCTION ; 
	}
	else
	{
		return NO_ERROR; 	
	}
	return NO_ERROR; 
}

static void _7SegZero  (_7Segment_Config* ptr_config)
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 				
			break ;		 
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			break;
	}
}
static void _7SegOne   (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	
		 break ;	 
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		break;
	}
}
static void _7SegTwo   (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A ON 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;	// C OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G ON
		 break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
		break;
	}
}
static void _7SegThree (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A ON 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// C ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D on
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G ON
		 break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		break;
	}
}
static void _7SegFour  (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;	// C ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G ON
		break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		break;
	}
}
static void _7SegFive  (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A ON 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;	// C ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G ON
		break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		break;
	}
}
static void _7SegSix   (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A ON 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;	// C ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G ON
		break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		
		break;
	}
}
static void _7SegSeven (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A ON 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;	// C ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G OFF
		break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		
		break;
	}
}
static void _7SegEight (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A ON 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;	// C ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G ON
		break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		
		break;
	}
}
static void _7SegNine  (_7Segment_Config* ptr_config) 
{
	switch(ACCESS_STRUCT(ptr_config,_7SegmentMode))
	{
		case _7_SEG_NORMAL_MODE :
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// A ON 
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// B ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;	// C ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// D ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_E_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ;		// E OFF
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_F_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// F ON
		 GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_G_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 	// G ON
		break ;
		case _7_SEG_4_PIN_IC:
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_A_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_B_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_C_PIN, ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 
			GPIO_voidSetPinValue(ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PORT, ACCESS_STRUCT(ptr_config,_7SegmentPins)._7SEG_D_PIN, !ACCESS_STRUCT(ptr_config,_7SegmentType)) ; 		
		
		break;
	}
}

/************************************* End of File ******************************************/