#include "CA_module.h"

#define S_uint static unsigned int
S_uint CA_distance, CA_speed, CA_thershold = 50;
void (*ptr2State) (void);

STATE_DEFINE(CA_waiting)
{
	CA_state_id = CA_waiting; 
	// attrbuites

	if (CA_distance <= CA_thershold)
	{
		CA_speed = 0;
		CA2MOT_signal(CA_speed);
		// assign address of p2func to address of func
		ptr2State = STATE(CA_waiting);
	}
	else
	{

		CA_speed = 30;
		CA2MOT_signal(CA_speed);
		// CA_distance > CA_thershold
		ptr2State = STATE(CA_driving);
	}
	printf("CA state currentstate :  waiting state: New CA_distance = %d    CA_speed = %d   \n", CA_distance, CA_speed);
}
STATE_DEFINE(CA_driving)
{
	CA_state_id = CA_driving;
	// attrbuites


	if (CA_distance <= CA_thershold)
	{
		CA_speed = 0;
		CA2MOT_signal(CA_speed);
		// assign address of p2func to address of func
		ptr2State = STATE(CA_waiting);
	}
	else
	{
		CA_speed = 30;
		CA2MOT_signal(CA_speed);
		// CA_distance > CA_thershold
		ptr2State = STATE(CA_driving);
	}
	printf("currentstate :  driving state: New CA_distance = %d    CA_speed = %d   \n", CA_distance, CA_speed);
}

void US2CA_signal(int distance)
{
	CA_distance = distance; 
}