/********************************************/
/*Author  : Khaled Essonoutty				*/
/*Date    : 16 AUG 2022						*/ 
/*Version : v01								*/
/********************************************/

#ifndef _RCC_PRIVATE_H
#define _RCC_PRIVATE_H

/* Register Definition */
/* Base Address = 0x4002 1000 */

#define RCC_CR			*((u32*)0x40021000) //Clock
#define RCC_CFGR		*((u32*)0x40021004) //Clock
#define RCC_CIR			*((u32*)0x40021008)
#define RCC_APB2RSTR	*((u32*)0x4002100C)
#define RCC_APB1RSTR	*((u32*)0x40021010)
#define RCC_AHBENR		*((u32*)0x40021014) //Clock
#define RCC_APB2ENR		*((u32*)0x40021018) //Clock
#define RCC_APB1ENR		*((u32*)0x4002101C) //Clock
#define RCC_BDCR		*((u32*)0x40021020)
#define RCC_CSR			*((u32*)0x40021024)

/* RCC_ClockSource 
   Options:    RCC_HSE_CRYSTAL
               RCC_HSE_RC
               RCC_HSI
               RCC_PLL
				*/
#define RCC_HSE_CRYSTAL	0
#define RCC_HSE_RC		1
#define RCC_HSI			2
#define RCC_PLL			3

/* PLL Configurations */
#define RCC_PLL_IN_HSI_DIV_2	0
#define RCC_PLL_IN_HSE_DIV_2	1
#define RCC_PLL_IN_HSE			2


/* CSS configurations */
#define CSS_OFF			0
#define CSS_ON			1


#endif
