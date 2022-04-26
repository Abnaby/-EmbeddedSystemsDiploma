#ifndef  _PRSSURE_SENSOR_
#define _PRSSURE_SENSOR_
#include "common.h"

/// <summary>
/// pressureSensor_state its type enum hold all pressure sensor states 
/// </summary>
enum
{
	/// <summary>
	/// The ps reading sensor is a state for reading pressure from sensor.
	/// </summary>
	PS_readingSensor,
	/// <summary>
	/// The ps send reading is a state send the readings of pressure.
	/// </summary>
	PS_SendReading,
	/// <summary>
	/// The ps waiting is an idle state to take reading every 60 sec.
	/// </summary>
	PS_waiting
}pressureSensor_state;

/********************************WorkingPointer2FUNC*****************/
extern void (*pointerToState_PS)(void);

/********************************APIS********************************/
void pressureSensorInit(void); 
STATE_DEFINE(PS_readingSensor);
STATE_DEFINE(PS_SendReading);
STATE_DEFINE(PS_waiting);








#endif // ! _PRSSURE_SENSOR_
