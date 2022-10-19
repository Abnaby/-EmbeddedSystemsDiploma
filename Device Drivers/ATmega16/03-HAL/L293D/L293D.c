/**
* @file L293D.c
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-18
*
*/

/******************************************************************************
* Includes
*******************************************************************************/
#include "L293D.h"




/******************************************************************************
* Module Preprocessor Constants
*******************************************************************************/

/*  Predefined PWMs */  

PWM_config_t __Internal_L293_config_TIMER2__ = {TIMER2 , PWM2_FAST_MODE , PWM_TIMER2_CLK_OVR_1};
PWM_config_t __Internal_L293_config_TIMER0__ = {TIMER0 , PWM0_FAST_MODE , PWM_TIMER0_CLK_OVR_1};	

/*  Working ptr */
PWM_config_t *__Internal_L293_config__ = NULL;	


/******************************************************************************
* Module Preprocessor Macros
*******************************************************************************/
#define __GET_PORT_FRM_MACRO__	((ptr_usrConfig->selectPortPinForEnablePin>>3)& 0x07)-4



/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/
static void L293D_staticVoidInitPointers ();




/******************************************************************************
* Function Definitions
*******************************************************************************/
void L293D_staticVoidInitPointers (L293D_config *ptr_usrConfig)
{
    if(__GET_PORT_FRM_MACRO__ == PORTB)
    {
        // PWM0 
        __Internal_L293_config__ = &__Internal_L293_config_TIMER0__ ; 
    }
    else
    {
        // PWM1 
        __Internal_L293_config__ = &__Internal_L293_config_TIMER2__ ; 
    }
}

void L293D_voidInit(L293D_config *ptr_usrConfig)
{
    /*  Init PWM    */
    L293D_staticVoidInitPointers(ptr_usrConfig); 
	PWM_voidInit(__Internal_L293_config__);
    /*  Selct OC Pin    */
    PWM_voidSetOCPin(__Internal_L293_config__,(ptr_usrConfig->selectPortPinForEnablePin&0x20));
    /*  Set Port Pins As Output     */
    GPIO_voidSetPinDirection(__GET_PORT_FRM_MACRO__, ((ptr_usrConfig->selectPortPinForEnablePin)& 0x07) , OUTPUT);
    GPIO_voidSetPinDirection((ptr_usrConfig->L293D_IN1_Port),(ptr_usrConfig->L293D_IN1_Pin)  , OUTPUT);
    GPIO_voidSetPinDirection((ptr_usrConfig->L293D_IN2_Port),(ptr_usrConfig->L293D_IN2_Pin)  , OUTPUT);
	// By Default FWD Dir
	GPIO_voidSetPinValue((ptr_usrConfig->L293D_IN1_Port),(ptr_usrConfig->L293D_IN1_Pin) , HIGH);
	GPIO_voidSetPinValue((ptr_usrConfig->L293D_IN2_Port),(ptr_usrConfig->L293D_IN2_Pin) , LOW);
}

void L293D_voidSetSpeed(L293D_config *ptr_usrConfig , u8 copy_u8AnalogValue)
{
    /*  Select PWM pin  */
    L293D_staticVoidInitPointers(ptr_usrConfig); 
    if(ptr_usrConfig != NULL)
    {
        PWM_voidSetDuty(__Internal_L293_config__,copy_u8AnalogValue); 
    }
    else
    {
        // <TODO ERROR> Null Pointer 
    }
}
void L293D_voidSetDirection(L293D_config *ptr_usrConfig , L293D_Directions copy_setDirections)
{
    /*  Select Dir pin  */
    L293D_staticVoidInitPointers(ptr_usrConfig); 
    if(ptr_usrConfig != NULL)
    {
        switch (copy_setDirections)
        {
        case L293D_FWD:
            // IN1 HIGH , IN2 LOW
            GPIO_voidSetPinValue((ptr_usrConfig->L293D_IN1_Port),(ptr_usrConfig->L293D_IN1_Pin) , HIGH);
            GPIO_voidSetPinValue((ptr_usrConfig->L293D_IN2_Port),(ptr_usrConfig->L293D_IN2_Pin) , LOW);
            break;
        case L293D_REV:
            // IN1 HIGH , IN2 LOW
            GPIO_voidSetPinValue((ptr_usrConfig->L293D_IN1_Port),(ptr_usrConfig->L293D_IN1_Pin) , LOW);
            GPIO_voidSetPinValue((ptr_usrConfig->L293D_IN2_Port),(ptr_usrConfig->L293D_IN2_Pin) , HIGH);
            break;     
        default:
            // <TODO ERROR> Select Valid direction 
            break;
        } 
    }
    else
    {
        // <TODO ERROR> Null Pointer 
    }    
}
void L293D_voidToggleDirection(L293D_config *ptr_usrConfig)
{
    /*  Select Dir pin  */
    L293D_staticVoidInitPointers(ptr_usrConfig); 
    if(ptr_usrConfig != NULL)
    {
        GPIO_voidTogglePin((ptr_usrConfig->L293D_IN1_Port),(ptr_usrConfig->L293D_IN1_Pin) );
        GPIO_voidTogglePin((ptr_usrConfig->L293D_IN2_Port),(ptr_usrConfig->L293D_IN2_Pin) );
    }
    else
    {
        // <TODO ERROR> Null Pointer 
    } 	
}

/************************************* End of File ******************************************/