/**
* @file GateControl.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-12-5
*
*/


/******************************************************************************
* Includes
*******************************************************************************/
#include "GateControl.h"





/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

PWM_config_t __InternalDriverServoMotor__ = {TIMER1 , PWM1_FAST_MODE_10_BIT         , PWM_TIMER1_CLK_OVR_64};	


/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/


static ServoMotor_Config ptr_usrConfig = {SERVO_ATTTCH_PD4};


/******************************************************************************
* Function Prototypes
*******************************************************************************/




/******************************************************************************
* Function Definitions
*******************************************************************************/


void GateControl_voidInit()
{
	PWM_voidInit(&__InternalDriverServoMotor__);
	PWM_voidSetOCPin(&__InternalDriverServoMotor__,((ptr_usrConfig.selectServoPin)&0xA0));
	GPIO_voidSetPinDirection(PORTD, ((ptr_usrConfig.selectServoPin)& 0x07), OUTPUT);
}
void GateControl_voidOpenGate()
{
	PWM_voidPhaseFrequencyCorrectSetValues(&__InternalDriverServoMotor__,((ptr_usrConfig.selectServoPin)&0xA0),2499,188);

}
void GateControl_voidCloseGate() 
{
	PWM_voidPhaseFrequencyCorrectSetValues(&__InternalDriverServoMotor__,((ptr_usrConfig.selectServoPin)&0xA0),2499,125 );
}
/************************************* End of File ******************************************/