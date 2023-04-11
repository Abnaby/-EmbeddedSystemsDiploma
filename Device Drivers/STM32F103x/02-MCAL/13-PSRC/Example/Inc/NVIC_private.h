/**
* @file NVIC_private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.1
* @date 2022-10-27
*
*/
#ifndef NVIC_PRIVATE_H 
#define NVIC_PRIVATE_H 





/******************************************************************************
* Includes
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
#define NVIC_BASE_ADDRESS	 0xE000E100
		/*		REGISTER BOUNDARY ADDRESSES 		*/
#define NVIC_ISER       ((volatile u32 *)(NVIC_BASE_ADDRESS + 0x000))   /*      Interrupt set-enable registers          */
#define NVIC_ICER       ((volatile u32 *)(NVIC_BASE_ADDRESS + 0x080))   /*      Interrupt clear-enable registers        */
#define NVIC_ISPR       ((volatile u32 *)(NVIC_BASE_ADDRESS + 0x100))   /*      Interrupt set-pending registers         */
#define NVIC_ICPR       ((volatile u32 *)(NVIC_BASE_ADDRESS + 0x180))   /*      Interrupt clear-pending registers       */
#define NVIC_IABR 		((volatile u32 *)(NVIC_BASE_ADDRESS + 0x200))   /*      Interrupt active bit registers          */
#define NVIC_IPR		((volatile u8 *)(NVIC_BASE_ADDRESS + 0x300))    /*      Interrupt priority registers Byte Accessible   */
#define NVIC_STIR		((volatile u32 *)(NVIC_BASE_ADDRESS + 0xE00))   /*      Software trigger interrupt register     */


#define SCB_BASE_ADDRESS	0xE000ED00 

#define SCB_AIRCR 			*((volatile u32 *) SCB_BASE_ADDRESS + 0x0C)

#define VECTKEYSTAT			(u32)0xFA050000





/******************************************************************************
* Typedefs
*******************************************************************************/




/******************************************************************************
* Variables
*******************************************************************************/




/******************************************************************************
* Module Variable Definitions
*******************************************************************************/




/******************************************************************************
* Private Function Prototypes
*******************************************************************************/




#endif
/************************************* End of File ******************************************/