/**************************************************************************/
/* Author	: Mohamed                                                 */
/* Date		: 25 OCT 2022                                             */
/* Version	: V01							  */
/**************************************************************************/
#ifndef BIT_MATH_H
#define BIT_MATH_H

#define SET_BIT(VAR,BIT)					VAR |= (1 << (BIT))
#define CLR_BIT(VAR,BIT) 					VAR &= ~(1 << (BIT))
#define GET_BIT(VAR,BIT)					(VAR >> BIT) & 1
#define TOG_BIT(VAR,BIT)					VAR ^= (1 << (BIT))
#define SPECIAL_SET(VAR,SHIFTNUM, BIT)		VAR |= (SHIFTNUM << (BIT))
#define SPECIAL_CLR(VAR,SHIFTNUM, BIT)		VAR &= ~(SHIFTNUM << (BIT))
#define NULL (void *)0
#endif
