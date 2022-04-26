#include "stdio.h"
#include "stdlib.h"
#include "commonModule.h"


/* STATE ENUM */
enum
{
	US_busy
}US_state_id;

// FUNC PROTOTYPES
STATE_DEFINE(US_busy);
void US_sensorInit(void);
extern void (*ptr2State_US) (void);




