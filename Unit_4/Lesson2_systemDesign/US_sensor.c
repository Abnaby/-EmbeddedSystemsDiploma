#include "US_sensor.h"


#define S_uint static unsigned int
S_uint US_distance, US_speed, US_thershold = 50;
void (*ptr2State_US) (void);
int a0(int from, int to, int count);

void US_sensorInit(void)
{
	// 1st state 
	ptr2State_US = STATE(US_busy); 
	// Driver Init
	printf("Ultrasonic Inited ....... ");
}
STATE_DEFINE(US_busy)
{
	US_state_id = US_busy;
	// attrbuites
	US_speed = 0;
	// Get Distance From Ultrasonic
	US_distance = a0(45, 55, 1);
	// Send Signal To CA
	US2CA_signal(US_distance);
	// Go to busy state for next reading
	ptr2State_US = STATE(US_busy);
	printf("US_currentstate :  busy state: New US_distance = %d \n", US_distance);
}

int a0(int from, int to, int count)
{
	int i;
	for (i = 0; i < count; i++) {
		int num = (rand() %
			(to - from + 1)) + from;
		return num;
	}
	return 0;
}
