#include "stdio.h"
#include "commonModule.h"


/* STATE ENUM */
enum
{
	CA_waiting,
	CA_driving
}CA_state_id;

// FUNC PROTOTYPES
STATE_DEFINE(CA_waiting);
STATE_DEFINE(CA_driving);

// Global Pointer for movments

extern void (*ptr2State) (void);




