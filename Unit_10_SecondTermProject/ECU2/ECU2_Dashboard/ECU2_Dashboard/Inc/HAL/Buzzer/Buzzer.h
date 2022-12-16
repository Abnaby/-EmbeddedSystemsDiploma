/*
 * Buzzer.h
 *
 *  Created on: Dec 12, 2022
 *      Author: Abnaby
 */

#ifndef HAL_BUZZER_BUZZER_H_
#define HAL_BUZZER_BUZZER_H_


/******************************************************************************
* Includes
*******************************************************************************/


#include "../../LIB/BIT_MATH/BIT_MATH.h"
#include "../../LIB/STD_TYPES/STD_TYPES.h"
#include "../../LIB/COMMON/COMMON.h"

#include "../../MCAL/RCC/RCC_interface.h"
#include "../../MCAL/GPIO/GPIO_interface.h"


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
* Function Prototypes
*******************************************************************************/
void Buzzer_voidInit(u8 Copy_u8Port, Pin_t Copy_Pin);
void Buzzer_voidPlay(u8 Copy_u8Port, Pin_t Copy_Pin , PIN_ACTIVE BuzzerActiveType);
void Buzzer_voidStop(u8 Copy_u8Port, Pin_t Copy_Pin , PIN_ACTIVE BuzzerActiveType);



#endif /* HAL_BUZZER_BUZZER_H_ */
