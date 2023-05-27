/********************************************/
/*Author  : Khaled Essonoutty				*/
/*Date    : 16 AUG 2022						*/ 
/*Version : v01								*/
/********************************************/

#ifndef _RCC_INTERFACE_H
#define _RCC_INTERFACE_H

#include "STD_TYPES.h"

#define RCC_AHB		0
#define	RCC_APB1	1
#define RCC_APB2	2

void RCC_voidInitSysClock(void);
void RCC_voidEnableClock(u8 Copy_u8BusId ,u8 Copy_u8PreId);
void RCC_voidDisableClock(u8 Copy_u8BusId ,u8 Copy_u8PreId);

#endif
