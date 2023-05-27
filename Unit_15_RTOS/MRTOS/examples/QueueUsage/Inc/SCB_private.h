/**
* @file SCB_private.h
* @author Mohamed Abd El-Naby (mahameda.naby@gmail.com) 
* @brief 
* @version 0.2
* @date 2023-01-02
*
*/
#ifndef SCB_PRIVATE_H 
#define SCB_PRIVATE_H 





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


#define SCB_BASE_ADDRESS	0xE000ED00 
		/*		REGISTER BOUNDARY ADDRESSES 		*/		
#define SCB_ACTLR 			*((volatile u32 *) SCB_BASE_ADDRESS + 0x00)
#define SCB_CPUID 			*((volatile u32 *) SCB_BASE_ADDRESS + 0x00)
#define SCB_ICSR			*((volatile u32 *) (SCB_BASE_ADDRESS + 0x04))
#define SCB_VTOR	 		*((volatile u32 *) SCB_BASE_ADDRESS + 0x08)
#define SCB_AIRCR 			*((volatile u32 *) SCB_BASE_ADDRESS + 0x0C)
#define SCB_SCR			    *((volatile u32 *) SCB_BASE_ADDRESS + 0x10)
#define SCB_CCR			    *((volatile u32 *) SCB_BASE_ADDRESS + 0x14)
#define SCB_SHPR			*((volatile u32 *) SCB_BASE_ADDRESS + 0x18)
#define SCB_SHCRS			*((volatile u32 *) SCB_BASE_ADDRESS + 0x24)
#define SCB_CFSR			*((volatile u32 *) SCB_BASE_ADDRESS + 0X28)
#define SCB_HFSR			*((volatile u32 *) SCB_BASE_ADDRESS + 0x2C)
#define SCB_MMAR			*((volatile u32 *) SCB_BASE_ADDRESS + 0x34)
#define SCB_BFAR			*((volatile u32 *) SCB_BASE_ADDRESS + 0x38)
		/*		REGISTER VECT KEY 		*/
		
#define SCB_AIRCR_VECT_KEY  0x05FA



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
