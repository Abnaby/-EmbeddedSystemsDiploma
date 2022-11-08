/**
* @file RCC_config.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-25
*
*/
#ifndef RCC_CONFIG_H 
#define RCC_CONFIG_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/





/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Configuration Constants
*******************************************************************************/

/*  Clock type :
    Options:        RCC_HSE_CRYSTAL
                    RCC_HSE_RC
                    RCC_HSI
                    RCC_PLL 
                
*/
#define RCC_CLOCK_TYPE              RCC_HSI


/* 
- PLL Input Options:
    RCC_PLL_IN_HSI_DIV_2        Select HSI/2 as input to PLL.
    RCC_PLL_IN_HSE_DIV_2        Select HSE/2 as input to PLL.  
    RCC_PLL_IN_HSE              Select HSE   as input to PLL.
- HSE from crystal or RC
    RCC_PLL_HSE_CRYSTAL       Select Crystal as input to PLL.         
    RCC_PLL_HSE_RC            Select RC as input to PLL.  
- PLL MULL Ortions
    RCC_CFGR_PLLMULLxx                PLL input clock x xx
    RCC_CFGR_PLLMULL4                PLL input clock x 4
    .
    .
    .
    RCC_CFGR_PLLMULL16               PLL input clock x 16
*/
#if RCC_CLOCK_TYPE == RCC_PLL 
   #define RCC_PLL_INPUT     RCC_PLL_IN_HSE
   #if RCC_PLL_INPUT == RCC_PLL_IN_HSE
      #define RCC_PLL_HSE       RCC_PLL_HSE_RC
   #endif
   #define RCC_PLL_MUL_VAL   RCC_CFGR_PLLMULL2
#endif

/* Bus prescaler
	For AHB : 
				RCC_AHB_prescaler_SYSCLK_DIV_# , :# 1,2,4,6,8,16,64,128,256 and 512
	For APB1:
				RCC_APB1_prescaler_AHB_DIV_#  ,  : # --> 1,2,4,8 and 16
	For APB2:	
				RCC_APB2_prescaler_AHB_DIV_#  ,  : # --> 1,2,4,8 and 16
				

*/
#define RCC_AHB_PRESCALER			RCC_AHB_PRESCALER_DEV_1
#define RCC_APB1_PRESCALER		    RCC_APB1_PRESCALER_DEV_1
#define RCC_APB2_PRESCALER			RCC_APB2_PRESCALER_DEV_1

#endif
/************************************* End of File ******************************************/
