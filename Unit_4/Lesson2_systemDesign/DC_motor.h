#ifndef _DC_MOT_
#define _DC_MOT_

#include "stdio.h"
#include "stdlib.h"
#include "commonModule.h"


/* STATE ENUM */
enum
{
	DCMOT_idle,
	DCMOT_busy
}DCMOT_state_id;

// FUNC PROTOTYPES
STATE_DEFINE(DCMOT_idle);
STATE_DEFINE(DCMOT_busy);
void DCMOT_init(void);
extern void (*ptr2State_DCMOT) (void);


#endif // !DC_MOT
