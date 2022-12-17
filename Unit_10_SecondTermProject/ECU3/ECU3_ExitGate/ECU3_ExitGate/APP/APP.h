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
#include "../LIB/MAPPING/MAPPING.h"

// MCAL
#include "../MCAL/GPIO/GPIO_interface.h"
#include "../MCAL/EXTI/EXT_INT_interface.h"
#include "../MCAL/UART/USART_interface.h"
#include "../MCAL/PWM/PWM_Interface.h"
#include "../MCAL/SPI/SPI_Interface.h"
// HAL
#include "../HAL/PIR/PIR.h"
#include "../HAL/RFID/RFID.h"
#include "../HAL/Gate/GateControl.h"
#include "../HAL/LCD/LCD.h"

#include <util/delay.h>





/***************************** APIs	 *****************************************/ 
void ECU3_Exit_APP_SETUP(void) ; 
void ECU3_Exit_APP_LOOP(void) ; 

#endif /* APP_H_ */