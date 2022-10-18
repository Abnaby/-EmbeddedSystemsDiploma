/**************************************************************************/
/* Author	: Mohamed                                               	  */
/* Date		: 26 January 2021                                 		      */
/* Version	: V01							  							  */
/**************************************************************************/

#ifndef BIT_MATH_H
#define BIT_MATH_H

	#define SET_BIT(REG,BIT_NUM)	REG |= (1 << BIT_NUM)
	#define CLR_BIT(REG,BIT_NUM)	REG &= ~(1<<BIT_NUM)
	#define TOG_BIT(REG,BIT_NUM)	REG ^= (1 << BIT_NUM)
	#define GET_BIT(REG,BIT_NUM)	((REG >>  BIT_NUM) & 1	)
	//#define GET_BIT(REG,BIT_NUM)	((REG & (1<<BIT_NUM) )>>BIT_NUM) 

			



#endif