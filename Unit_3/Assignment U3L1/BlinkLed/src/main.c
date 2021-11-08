
#include <stddef.h>
#include "Platform_Types.h"
/***********************Common**************************************************/
/*	Preprocessor definitions */
#define BIT_FIELD	0
#define BIT_MASKING	1

/*	Delay	*/
int counter = 0 ; 
#define delay	for(counter =0 ; counter < 10000	; counter++)
/*******************************************************************************/

/*
 * Description: select one working technique from options.
 * @ WORKING_TECHNIQUE
 * 						BIT_FIELD
 * 						BIT_MASKING
 */

#define WORKING_TECHNIQUE 	BIT_FIELD

/*	Base Addresses	*/
#define RCC_BASEADDRESS				0x40021000
#define GPIO_PORTA_BASEADDRESS		0x40010800

#if WORKING_TECHNIQUE == BIT_MASKING
	/*	Bit Math	*/
	#define SET_BIT(REG,BIT)	REG |= (1 << BIT)
	#define CLR_BIT(REG,BIT)	REG &= ~(1 << BIT)
	/*	Pointers to Regs	*/
	#define APB2ENR		*((volatile uint32 *)(RCC_BASEADDRESS+0x18))
	#define GPIOA_CRH 	*((volatile uint32 *)(GPIO_PORTA_BASEADDRESS+0x04))
	#define GPIOA_ODR 	*((volatile uint32 *)(GPIO_PORTA_BASEADDRESS+0x0C))
	/*	Used Bits in Regs	*/
	#define APB2ENR_IOPAEN		2
	#define CRH_MODE_PIN13_LSB	20
	#define CRH_MODE_PIN13_MSB	24
	#define ODR_PIN13			13
#elif WORKING_TECHNIQUE == BIT_FIELD
	typedef union
	{
		volatile uint32 all_bits ;
		struct {
			volatile uint32 bit0:1 ;
			volatile uint32 bit1:1 ;
			volatile uint32 bit2:1 ;
			volatile uint32 bit3:1 ;
			volatile uint32 bit4:1 ;
			volatile uint32 bit5:1 ;
			volatile uint32 bit6:1 ;
			volatile uint32 bit7:1 ;
			volatile uint32 bit8:1 ;
			volatile uint32 bit9:1 ;
			volatile uint32 bit10:1 ;
			volatile uint32 bit11:1 ;
			volatile uint32 bit12:1 ;
			volatile uint32 bit13:1 ;
			volatile uint32 bit14:1 ;
			volatile uint32 bit15:1 ;
			volatile uint32 bit16:1 ;
			volatile uint32 bit17:1 ;
			volatile uint32 bit18:1 ;
			volatile uint32 bit19:1 ;
			volatile uint32 bit20:1 ;
			volatile uint32 bit21:1 ;
			volatile uint32 bit22:1 ;
			volatile uint32 bit23:1 ;
			volatile uint32 bit24:1 ;
			volatile uint32 bit25:1 ;
			volatile uint32 bit26:1 ;
			volatile uint32 bit27:1 ;
			volatile uint32 bit28:1 ;
			volatile uint32 bit29:1 ;
			volatile uint32 bit30:1 ;
			volatile uint32 bit31:1 ;
		}bits;
	}Reg_t;
volatile Reg_t * R_ODR 			= ((volatile Reg_t * )(GPIO_PORTA_BASEADDRESS+0x0C));
	volatile Reg_t * R_CRH 		= ((volatile Reg_t * )(GPIO_PORTA_BASEADDRESS+0x04));
	volatile Reg_t * R_APB2ENR  = ((volatile Reg_t * )(RCC_BASEADDRESS+0x18));
#endif


int main()
{
#if WORKING_TECHNIQUE == BIT_MASKING
	SET_BIT(APB2ENR ,APB2ENR_IOPAEN);
	GPIOA_CRH &= 0xFF0FFFFF ;
	GPIOA_CRH |= 0x00200000 ;
	while(1)
	{
		SET_BIT(GPIOA_ODR,ODR_PIN13);
		delay ;
		CLR_BIT(GPIOA_ODR,ODR_PIN13);
		delay ;
	}
#elif WORKING_TECHNIQUE == BIT_FIELD
	R_APB2ENR ->bits.bit2 = 1 ;
	/*	Mode Selection	*/
	R_CRH ->bits.bit20 = 0 ;
	R_CRH ->bits.bit21 = 1 ;
	R_CRH ->bits.bit22 = 0 ;
	R_CRH ->bits.bit23 = 0 ;

	while(1)
	{
		R_ODR->bits.bit13 = 1 ;
		delay ;
		R_ODR->bits.bit13 = 0 ;
		delay ;
	}
#endif


return 0 ;
}
