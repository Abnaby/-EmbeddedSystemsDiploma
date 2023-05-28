/********************************************/
/*Author  : Khaled Essonoutty				*/
/*Date    : 16 AUG 2022						*/ 
/*Version : v01								*/
/********************************************/

#ifndef _RCC_CONFIG_H
#define _RCC_CONFIG_H

/* Options:    RCC_HSE_CRYSTAL
               RCC_HSE_RC
               RCC_HSI
               RCC_PLL			   */

#define RCC_CLOCK_SOURCE	RCC_HSE_CRYSTAL  //choose between (INTERNAL / EXTERNAL_RC / EXTERNAL_CRY)


/* PLL Configurations */
#if RCC_CLOCK_SOURCE == RCC_PLL
#define RCC_PLL_INPUT	RCC_PLL_IN_HSI_DIV_2
#endif




#endif
