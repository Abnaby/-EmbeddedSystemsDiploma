#include "alarm.h"
#include "alarmManger.h"
#include "mainAlgo.h"
#include "pressureSensor.h"

void setup(void)
{
	// Initialize Pressure sensor
	pressureSensorInit();
	// Initialize Main Algo
	mainAlgoInit(); 
	// Initialize Alarm Manger
	alarmMangerInit();
	// Initialize Alarm Driver
	alarmInit();
}
int main()
{
	setup();
	while (1)
	{
		pointerToState_PS();
		pointerToState_MALGO();
		pointerToState_ALMANG();
		pointerToState_ALARM();
		for (volatile int i = 0; i <= 6000; i++);
	}
	int i = 0; 
}
