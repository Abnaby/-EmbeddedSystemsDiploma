#include "mainAlgo.h"
void (*pointerToState_MALGO)(void);
suint8 global_suint8RecievedPressureValue;
void mainAlgoInit(void)
{
	// assign 1st state 
	pointerToState_MALGO = STATE(mainAlgo_pressureCompartor);

}
STATE_DEFINE(mainAlgo_pressureCompartor)
{
	// apply compartor on pressure value
	if (global_suint8RecievedPressureValue >= THERSHOLD_PRESSURE)
	{
		// send pressure detected to alarm manger
		HighPressure_COM(HIGH_PRESSURE_DETECTED);
		// store this value in memory OPTIONAL

	}
	else
	{
		// send pressure value again
		HighPressure_COM(NO_PRESSURE_DETECTED);
	}
	

}
void PressureValue_COM(int pVal)
{
	global_suint8RecievedPressureValue = pVal;
}
