/**
* @file L293D.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-18
*
*/
#ifndef L293D__H 
#define L293D__H 





/******************************************************************************
* Includes
*******************************************************************************/
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "PWM_Interface.h"



/******************************************************************************
* User Configuration
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/




/******************************************************************************
* Typedefs
*******************************************************************************/

/**
 * @brief Enum holds directions of Motor
 * 
 */
typedef enum
{
    L293D_FWD , 
    L293D_REV
}L293D_Directions ; 


/**
 * @brief Enum Holds PWM Pins
 * 
 */
typedef enum
{
    /*  Timer 0 Pin    */
    L293D_ENABLE_ATTACH_PB3 = (PWM0_PB3_FM_NON_INVERTING | (PORTB<<3) | PIN3) ,
    /*  Timer 2 Pin    */
    L293D_ENABLE_ATTACH_PD7 = (PWM2_PD7_FM_NON_INVERTING | (PORTD<<3) | PIN7)
}L293D_EnablePin_t ; 

/**
 * @brief User Defined Struct
 * 
 */
typedef struct 
{
    /*  ENABLE  */
    L293D_EnablePin_t  selectPortPinForEnablePin ; 
    /*  IN1 FWD */
    u8 L293D_IN1_Port  ; 
    u8 L293D_IN1_Pin  ; 
    /*  IN2 REV */
    u8 L293D_IN2_Port  ; 
    u8 L293D_IN2_Pin  ; 
}L293D_config;



/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/

/**
 * @brief This Function Used to Init L293D Driver
 * 
 * @param ptr_usrConfig pointer to user defined struct 
 */
void L293D_voidInit(L293D_config *ptr_usrConfig); 

/**
 * @brief This Function Used to Set speed of motor by l293 
 * 
 * @param ptr_usrConfig pointer to user defined struct
 * @param copy_u8AnalogValue analog value 0:255 
 */
void L293D_voidSetSpeed(L293D_config *ptr_usrConfig , u8 copy_u8AnalogValue); 

/**
 * @brief This Function used to ser direction of motor by setting L293
 * 
 * @param ptr_usrConfig pointer to user defined struct
 * @param copy_setDirections select direction from @ref L293D_Directions
 */
void L293D_voidSetDirection(L293D_config *ptr_usrConfig , L293D_Directions copy_setDirections); 

/**
 * @brief This Function used to toggle direction of motor by setting L293
 * 
 * @param ptr_usrConfig pointer to user defined struct
 */
void L293D_voidToggleDirection(L293D_config *ptr_usrConfig); 


#endif
/************************************* End of File ******************************************/