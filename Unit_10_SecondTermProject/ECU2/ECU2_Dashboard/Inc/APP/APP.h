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
#include "../Inc/MCAL/RCC/RCC_interface.h"
#include "../Inc/MCAL/GPIO/GPIO_interface.h"
#include "../Inc/MCAL/SPI/SPI_interface.h"
#include "../Inc/MCAL/UART/USART_interface.h"
#include "../Inc/MCAL/NVIC/NVIC_interface.h"
#include "../Inc/MCAL/AFIO/AFIO_interface.h"
#include "../Inc/MCAL/EXTI/EXTI_interface.h"


// HAL

#include "../Inc/HAL/Buzzer/Buzzer.h"
#include "../Inc/HAL/_7Segment/_7Segment.h"
#include "../Inc/HAL/KeyPad/KeyPad.h"
#include "../Inc/HAL/LCD/LCD.h"



/***************************** APIs	 *****************************************/ 
void ECU3_Dashboard_APP_SETUP(void) ;
void ECU3_Dashboard_APP_LOOP(void) ;

#endif /* APP_H_ */
