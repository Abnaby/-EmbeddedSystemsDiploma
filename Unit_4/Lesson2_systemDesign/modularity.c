#include "stdio.h"
#include "stdlib.h"
#include "CA_module.h"
#include "DC_motor.h"
#include "US_sensor.h"
void setup(void)
{
	//SENSOR INIT 
	US_sensorInit();

	// Motor Init
	DCMOT_init();
	// CA INIT
	ptr2State = STATE(CA_waiting);

}
int main(void)
{
	volatile int i = 0;
	setup();
	while (1)
	{
		ptr2State_US();
		ptr2State();
		ptr2State_DCMOT();

		for (i = 0; i < 1000; i++);
	}
	return 0;
}
