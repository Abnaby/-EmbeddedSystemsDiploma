/**
* @file ServoMotor.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-18
*
*/


/******************************************************************************
* Includes
*******************************************************************************/
#include "ServoMotor.h"





/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

PWM_config_t __InternalDriverServoMotor__ = {TIMER1 , PWM1_PHASE_FREQ_CORRECT , PWM_TIMER1_CLK_OVR_64};	


/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/
void Servo_voidInit(ServoMotor_Config *ptr_usrConfig)
{
	PWM_voidInit(&__InternalDriverServoMotor__);
	PWM_voidSetOCPin(&__InternalDriverServoMotor__,((ptr_usrConfig->selectServoPin)&0xA0));
	GPIO_voidSetPinDirection(PORTD, ((ptr_usrConfig->selectServoPin)& 0x07), OUTPUT);
}
void Servo_voidWrite(ServoMotor_Config *ptr_usrConfig,u8 copy_u8Angle)
{
	float getTicks; 
	switch(copy_u8Angle)
	{
		case 0 : 
		getTicks = 125 ; 
		break ;
		case 30:
		getTicks =  146; 
		break ; 
		case 90 :
		getTicks =  188 ; 
		break ;
		case 120:
		getTicks = 208 ; 
		break ; 
		case 180 :
		getTicks = 250 ;  
		break ;
		default:
		{
			getTicks = ((copy_u8Angle+180.161)/1.4406); 
		}
	}
	PWM_voidPhaseFrequencyCorrectSetValues(&__InternalDriverServoMotor__,((ptr_usrConfig->selectServoPin)&0xA0),2499,(u16)getTicks);
}



/************************************* End of File ******************************************/