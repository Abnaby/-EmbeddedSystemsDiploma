#include "alarm.h"
#include "driver.h"

suint8 global_suint8AlarmState = 0; 
void (*pointerToState_ALARM)(void);

void alarmInit(void)
{
	// INIT GPIO DRIVER 
	GPIO_INITIALIZATION();
	// INIT POINTER FIRST STATE
	pointerToState_ALARM = STATE(alarmState_compartor); 
}
STATE_DEFINE(alarmState_compartor)
{
	if (global_suint8AlarmState == ALARM_PLAY)
	{
		// call state alarm on 
		STATE_CALL(alarmState_alarmON);
	}
	else
	{
		// call state alarm off 
		STATE_CALL(alarmState_alarmOFF);
	}
}
STATE_DEFINE(alarmState_alarmOFF)
{
	// STOP ALARM FROM DIO
	Set_Alarm_actuator(ALARM_STOP);

	pointerToState_ALARM = STATE(alarmState_compartor);
}
STATE_DEFINE(alarmState_alarmON)
{
	// PLAY ALARM FROM DIO
	Set_Alarm_actuator(ALARM_PLAY);
	pointerToState_ALARM = STATE(alarmState_compartor);

}

void Alarm_COM(int alarmState)
{
	global_suint8AlarmState = alarmState; 
}
