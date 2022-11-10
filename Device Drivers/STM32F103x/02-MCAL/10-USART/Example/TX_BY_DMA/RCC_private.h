/**
* @file RCC_private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-25
*
*/
#ifndef RCC_PRIVATE_H 
#define RCC_PRIVATE_H 





/******************************************************************************
* Includes
*******************************************************************************/




/******************************************************************************
* Preprocessor Constants
 *******************************************************************************/

/* Clock OPTIONS */ 
#define RCC_HSE_CRYSTAL                     0
#define RCC_HSE_RC                          1
#define RCC_HSI                             2
#define RCC_PLL                             3

/* PLL OPTIONS */
#define RCC_PLL_IN_HSI_DIV_2				0
#define	RCC_PLL_IN_HSE_DIV_2				1
#define	RCC_PLL_IN_HSE						2

/* PLLMUL */

#define RCC_PLLMUL_X2						2
#define RCC_PLLMUL_X3						3
#define RCC_PLLMUL_X4						4
#define RCC_PLLMUL_X5						5
#define RCC_PLLMUL_X6						6
#define RCC_PLLMUL_X7						7
#define RCC_PLLMUL_X8						8
#define RCC_PLLMUL_X9						9
#define RCC_PLLMUL_X10						10
#define RCC_PLLMUL_X11						11
#define RCC_PLLMUL_X12						12
#define RCC_PLLMUL_X13						13
#define RCC_PLLMUL_X14						14
#define RCC_PLLMUL_X15						15
#define RCC_PLLMUL_X16						16

/* AHB prescaler */
#define RCC_AHB_prescaler_NOT_DEV			0
#define RCC_AHB_prescaler_SYSCLK_DIV_2		1
#define RCC_AHB_prescaler_SYSCLK_DIV_4		2
#define RCC_AHB_prescaler_SYSCLK_DIV_6		3
#define RCC_AHB_prescaler_SYSCLK_DIV_8		4
#define RCC_AHB_prescaler_SYSCLK_DIV_16		5
#define RCC_AHB_prescaler_SYSCLK_DIV_64		6
#define RCC_AHB_prescaler_SYSCLK_DIV_128	7
#define RCC_AHB_prescaler_SYSCLK_DIV_256	8
#define RCC_AHB_prescaler_SYSCLK_DIV_512	9

/* APB1	prescaler */
#define RCC_APB1_prescaler_AHB_NOT_DEV		0
#define RCC_APB1_prescaler_AHB_DIV_2		1
#define RCC_APB1_prescaler_AHB_DIV_4		2
#define RCC_APB1_prescaler_AHB_DIV_8		3
#define RCC_APB1_prescaler_AHB_DIV_16		4
/* APB2	prescaler */
#define RCC_APB2_prescaler_AHB_NOT_DEV		0
#define RCC_APB2_prescaler_AHB_DIV_2		1
#define RCC_APB2_prescaler_AHB_DIV_4		2
#define RCC_APB2_prescaler_AHB_DIV_8		3
#define RCC_APB2_prescaler_AHB_DIV_16		4

/******************************************************************************
* Configuration Constants
*******************************************************************************/




/******************************************************************************
* Macros
*******************************************************************************/
#define RCC_CR               *((u32*)0x40021000)
#define RCC_CFGR             *((u32*)0x40021004)
#define RCC_CIR              *((u32*)0x40021008)
#define RCC_APB2RSTR         *((u32*)0x4002100C)
#define RCC_APB1RSTR         *((u32*)0x40021010)
#define RCC_AHBENR           *((u32*)0x40021014)
#define RCC_APB2ENR          *((u32*)0x40021018)
#define RCC_APB1ENR          *((u32*)0x4002101C)
#define RCC_BDCR             *((u32*)0x40021020)
#define RCC_CSR              *((u32*)0x40021024)


/*	CR BITS	*/
#define RCC_CR_HSION                           0            /*!< Internal High Speed clock enable */
#define RCC_CR_HSIRDY                          1            /*!< Internal High Speed clock ready flag */
#define RCC_CR_HSITRIM_0                       3            /*!< Internal High Speed clock trimming */
#define RCC_CR_HSITRIM_1                       4
#define RCC_CR_HSITRIM_2                       5
#define RCC_CR_HSITRIM_3                       6
#define RCC_CR_HSITRIM_4                       7
#define RCC_CR_HSICAL_0                        8            /*!< Internal High Speed clock Calibration */
#define RCC_CR_HSICAL_1                        9
#define RCC_CR_HSICAL_2                        10
#define RCC_CR_HSICAL_3                        11
#define RCC_CR_HSICAL_4                        12
#define RCC_CR_HSICAL_5                        13
#define RCC_CR_HSICAL_6                        14
#define RCC_CR_HSICAL_7                        15
#define RCC_CR_HSEON                           16          /*!< External High Speed clock enable */
#define RCC_CR_HSERDY                          17          /*!< External High Speed clock ready flag */
#define RCC_CR_HSEBYP                          18          /*!< External High Speed clock Bypass */
#define RCC_CR_CSSON                           19          /*!< Clock Security System enable */
#define RCC_CR_PLLON                           24          /*!< PLL enable */
#define RCC_CR_PLLRDY                          25          /*!< PLL clock ready flag */




/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Variables
*******************************************************************************/


/******************************************************************************
* Module Variable Definitions
*******************************************************************************/

/*!< RCC_CFGR */
/*!< SW configuration */
#define  RCC_CFGR_SW_HSI                     ((u32)0x00000000)        /*!< HSI selected as system clock */
#define  RCC_CFGR_SW_HSE                     ((u32)0x00000001)        /*!< HSE selected as system clock */
#define  RCC_CFGR_SW_PLL                     ((u32)0x00000002)        /*!< PLL selected as system clock */
/*!< SWS configuration */
#define  RCC_CFGR_SWS_HSI                    ((u32)0x00000000)        /*!< HSI oscillator used as system clock */
#define  RCC_CFGR_SWS_HSE                    ((u32)0x00000004)        /*!< HSE oscillator used as system clock */
#define  RCC_CFGR_SWS_PLL                    ((u32)0x00000008)        /*!< PLL used as system clock */
/*!< HPRE configuration */
#define  RCC_CFGR_HPRE_DIV1                  ((u32)0x00000000)        /*!< SYSCLK not divided */
#define  RCC_CFGR_HPRE_DIV2                  ((u32)0x00000080)        /*!< SYSCLK divided by 2 */
#define  RCC_CFGR_HPRE_DIV4                  ((u32)0x00000090)        /*!< SYSCLK divided by 4 */
#define  RCC_CFGR_HPRE_DIV8                  ((u32)0x000000A0)        /*!< SYSCLK divided by 8 */
#define  RCC_CFGR_HPRE_DIV16                 ((u32)0x000000B0)        /*!< SYSCLK divided by 16 */
#define  RCC_CFGR_HPRE_DIV64                 ((u32)0x000000C0)        /*!< SYSCLK divided by 64 */
#define  RCC_CFGR_HPRE_DIV128                ((u32)0x000000D0)        /*!< SYSCLK divided by 128 */
#define  RCC_CFGR_HPRE_DIV256                ((u32)0x000000E0)        /*!< SYSCLK divided by 256 */
#define  RCC_CFGR_HPRE_DIV512                ((u32)0x000000F0)        /*!< SYSCLK divided by 512 */
/*!< PPRE1 configuration */
#define  RCC_CFGR_PPRE1_DIV1                 ((u32)0x00000000)        /*!< HCLK not divided */
#define  RCC_CFGR_PPRE1_DIV2                 ((u32)0x00000400)        /*!< HCLK divided by 2 */
#define  RCC_CFGR_PPRE1_DIV4                 ((u32)0x00000500)        /*!< HCLK divided by 4 */
#define  RCC_CFGR_PPRE1_DIV8                 ((u32)0x00000600)        /*!< HCLK divided by 8 */
#define  RCC_CFGR_PPRE1_DIV16                ((u32)0x00000700)        /*!< HCLK divided by 16 */
/*!< PPRE2 configuration */
#define  RCC_CFGR_PPRE2_DIV1                 ((u32)0x00000000)        /*!< HCLK not divided */
#define  RCC_CFGR_PPRE2_DIV2                 ((u32)0x00002000)        /*!< HCLK divided by 2 */
#define  RCC_CFGR_PPRE2_DIV4                 ((u32)0x00002800)        /*!< HCLK divided by 4 */
#define  RCC_CFGR_PPRE2_DIV8                 ((u32)0x00003000)        /*!< HCLK divided by 8 */
#define  RCC_CFGR_PPRE2_DIV16                ((u32)0x00003800)        /*!< HCLK divided by 16 */
/*!< ADCPPRE configuration */
#define  RCC_CFGR_ADCPRE_DIV2                ((u32)0x00000000)        /*!< PCLK2 divided by 2 */
#define  RCC_CFGR_ADCPRE_DIV4                ((u32)0x00004000)        /*!< PCLK2 divided by 4 */
#define  RCC_CFGR_ADCPRE_DIV6                ((u32)0x00008000)        /*!< PCLK2 divided by 6 */
#define  RCC_CFGR_ADCPRE_DIV8                ((u32)0x0000C000)        /*!< PCLK2 divided by 8 */
/*!< PLLSRC & PLLXTPRE configuration */
#define  RCC_CFGR_PLLSRC_HSI_Div2            ((u32)0x00000000)        /*!< HSI clock divided by 2 selected as PLL entry clock source */
#define  RCC_CFGR_PLLSRC_HSE                 ((u32)0x00010000)        /*!< HSE clock selected as PLL entry clock source */
#define  RCC_CFGR_PLLXTPRE_HSE               ((u32)0x00000000)        /*!< HSE clock not divided for PLL entry */
#define  RCC_CFGR_PLLXTPRE_HSE_Div2          ((u32)0x00020000)        /*!< HSE clock divided by 2 for PLL entry */
/*!< PLLMUL configuration */
#define  RCC_CFGR_PLLMULL2                   ((u32)0x00000000)        /*!< PLL input clock*2 */
#define  RCC_CFGR_PLLMULL3                   ((u32)0x00040000)        /*!< PLL input clock*3 */
#define  RCC_CFGR_PLLMULL4                   ((u32)0x00080000)        /*!< PLL input clock*4 */
#define  RCC_CFGR_PLLMULL5                   ((u32)0x000C0000)        /*!< PLL input clock*5 */
#define  RCC_CFGR_PLLMULL6                   ((u32)0x00100000)        /*!< PLL input clock*6 */
#define  RCC_CFGR_PLLMULL7                   ((u32)0x00140000)        /*!< PLL input clock*7 */
#define  RCC_CFGR_PLLMULL8                   ((u32)0x00180000)        /*!< PLL input clock*8 */
#define  RCC_CFGR_PLLMULL9                   ((u32)0x001C0000)        /*!< PLL input clock*9 */
#define  RCC_CFGR_PLLMULL10                  ((u32)0x00200000)        /*!< PLL input clock10 */
#define  RCC_CFGR_PLLMULL11                  ((u32)0x00240000)        /*!< PLL input clock*11 */
#define  RCC_CFGR_PLLMULL12                  ((u32)0x00280000)        /*!< PLL input clock*12 */
#define  RCC_CFGR_PLLMULL13                  ((u32)0x002C0000)        /*!< PLL input clock*13 */
#define  RCC_CFGR_PLLMULL14                  ((u32)0x00300000)        /*!< PLL input clock*14 */
#define  RCC_CFGR_PLLMULL15                  ((u32)0x00340000)        /*!< PLL input clock*15 */
#define  RCC_CFGR_PLLMULL16                  ((u32)0x00380000)        /*!< PLL input clock*16 */


/******************************************************************************
* Private Function Prototypes
*******************************************************************************/




#endif
/************************************* End of File ******************************************/
