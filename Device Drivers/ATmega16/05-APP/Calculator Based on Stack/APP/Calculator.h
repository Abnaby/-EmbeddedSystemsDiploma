/*
 * Calculator.h
 *
 * Created: 10/29/2022 1:06:17 PM
 *  Author: Abnaby
 */ 


#ifndef CALCULATOR_H_
#define CALCULATOR_H_



/******************************************************************************
* Includes
*******************************************************************************/
#include "../LIB/BIT_MATH.h"
#include "../LIB/STD_TYPES.h"
#include "../LIB/MAPPING.h"
#include "../MCAL/GPIO/GPIO_interface.h"
#include "../MCAL/USART/USART_Interface.h"
#include "../HAL/KEYPAD/KeyPad.h"
#include "../HAL/LCD/LCD.h"
#include "STACK/stackAPIs.h"
#include <util/delay.h>



/******************************************************************************
* Typedefs
*******************************************************************************/

/******************************************************************************
* Macros
*******************************************************************************/
#define EXIT_CHAR	'\n'

/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Function Prototypes
*******************************************************************************/


void APP_voidCalculatorSetup(void);

void APP_voidCalculatorStrat(void); 



#endif /* CALCULATOR_H_ */