#include "DC_motor.h"

#define S_uint static unsigned int
S_uint  DCMOT_speed ;
void (*ptr2State_DCMOT) (void);
void DCMOT_init(void)
{
	// 1st state 
	ptr2State_DCMOT = STATE(DCMOT_idle);
	printf("DC DRIVIER INIT>>>\n"); 
}
STATE_DEFINE(DCMOT_idle)
{
	DCMOT_state_id = DCMOT_idle;
	ptr2State_DCMOT = STATE(DCMOT_idle);
	printf("motor state currentstate : IDLE: DCMOT_speed = %d   \n", DCMOT_speed);
}
STATE_DEFINE(DCMOT_busy)
{
	DCMOT_state_id = DCMOT_busy;
	// attrbuites
	ptr2State_DCMOT = STATE(DCMOT_idle);
	printf("motor state currentstate :  busy state: DCMOT_speed = %d   \n", DCMOT_speed);
}

void CA2MOT_signal(int speed)
{
	DCMOT_speed = speed; 
	ptr2State_DCMOT = STATE(DCMOT_busy);
}