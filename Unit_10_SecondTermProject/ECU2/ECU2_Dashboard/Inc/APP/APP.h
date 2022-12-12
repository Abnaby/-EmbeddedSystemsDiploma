/*
 * APP.h
 *
 * Created: 12/9/2022 11:30:00 PM
 * Author : Abnaby
 */ 


#ifndef APP_H_
#define APP_H_

/******************************************************************************
* Includes
*******************************************************************************/
// LIBs
#include "../LIB/STD_TYPES/STD_TYPES.h"
#include "../LIB/BIT_MATH/BIT_MATH.h"
#include "../LIB/COMMON/COMMON.h"

// MCAL
#include "../MCAL/RCC/RCC_interface.h"
#include "../MCAL/GPIO/GPIO_interface.h"

// HAL





/***************************** APIs	 *****************************************/ 
void ECU3_Exit_APP_SETUP(void) ; 
void ECU3_Exit_APP_LOOP(void) ; 

#endif /* APP_H_ */
