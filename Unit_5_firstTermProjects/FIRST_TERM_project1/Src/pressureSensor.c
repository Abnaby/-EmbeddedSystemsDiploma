#include "pressureSensor.h"
/********************************PRIVATE GLOBAL VARs*****************/
suint8 Global_suint8PressureValue;
void (*pointerToState_PS)(void);
void pressureSensorInit(void)
{
	// Init SENSOR Driver 

	// Init First State
	pointerToState_PS = STATE(PS_readingSensor);
}
STATE_DEFINE(PS_readingSensor)
{
	// Read From Sensor 
	Global_suint8PressureValue = getPressureVal();
	// Next time will send reading
	pointerToState_PS = STATE(PS_SendReading);


}
STATE_DEFINE(PS_SendReading)
{
	// start send reading to main algo
	PressureValue_COM(Global_suint8PressureValue);
	// Goto waiting state 
	pointerToState_PS = STATE(PS_waiting);
}
STATE_DEFINE(PS_waiting)
{
	// wait for 60 sec timer then goto PS_readingSensor state
	// emulate delay func
	volatile int i = 6000;
	Delay(i);
	pointerToState_PS = STATE(PS_readingSensor);
}

