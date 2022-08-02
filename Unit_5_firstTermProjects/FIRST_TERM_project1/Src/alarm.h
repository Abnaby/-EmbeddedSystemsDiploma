#ifndef _ALARM_H
#define _ALARM_H
#include "common.h"

/// <summary>
/// alarm_state its type enum hold all states 
/// </summary>
enum
{
	alarmState_compartor,
	alarmState_alarmON,
	alarmState_alarmOFF,
}alarm_state;

#define ALARM_PLAY 1
#define ALARM_STOP 0
/********************************WorkingPointer2FUNC*****************/
extern void (*pointerToState_ALARM)(void);
/********************************APIS********************************/
void alarmInit(void);
STATE_DEFINE(alarmState_compartor);
STATE_DEFINE(alarmState_alarmOFF);
STATE_DEFINE(alarmState_alarmON);
#endif // !_ALARM_H
