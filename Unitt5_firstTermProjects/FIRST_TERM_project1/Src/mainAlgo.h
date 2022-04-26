#ifndef _MAIN_ALGO_H
#define _MAIN_ALGO_H
#include "common.h"
/// <summary>
/// mainAlgo_state its type enum hold all states 
/// </summary>
enum
{
	mainAlgo_pressureCompartor
}mainAlgo_state;

#define HIGH_PRESSURE_DETECTED 1
#define NO_PRESSURE_DETECTED 0
/********************************WorkingPointer2FUNC*****************/
extern void (*pointerToState_MALGO)(void);
/********************************APIS********************************/
STATE_DEFINE(mainAlgo_pressureCompartor); 

#endif // !_MAIN_ALGO_H
