#ifndef _ALARM_MANGER_H
#define _ALARM_MAGMER_H
#include "common.h"
/// <summary>
/// alarmManger_state its type enum hold all states 
/// </summary>
enum
{
	alarmManger_sendAlarmOFF,
	alarmManger_sendAlarmON,
	alarmManger_waiting
}alarmManger_state;

#define ALARM_PLAY 1
#define ALARM_STOP 0
/********************************WorkingPointer2FUNC*****************/
extern void (*pointerToState_ALMANG)(void);
/********************************APIS********************************/
void alarmMangerInit(void);
STATE_DEFINE(alarmManger_sendAlarmOFF);
STATE_DEFINE(alarmManger_sendAlarmON);
STATE_DEFINE(alarmManger_waiting);

#endif // !_MAIN_ALGO_H


