#include "alarmManger.h"
void (*pointerToState_ALMANG)(void);
suint8 isPressureDetected; 
void alarmMangerInit(void)
{
	// Assign First State 2 pointer 
	pointerToState_ALMANG = STATE(alarmManger_sendAlarmOFF);
}
STATE_DEFINE(alarmManger_sendAlarmOFF)
{
	// send signal to stop alarm
	Alarm_COM(ALARM_STOP);
	// check pressure detect signal 
	if (isPressureDetected)
	{

		// pointerToState_ALMANG = STATE(alarmManger_sendAlarmON);
		//call
		STATE_CALL(alarmManger_sendAlarmON);
	}
	else
	{
		pointerToState_ALMANG = STATE(alarmManger_sendAlarmOFF);

	}
}
STATE_DEFINE(alarmManger_sendAlarmON)
{
	// SET TIMER FOR 60 SEC 
	// SEND SIGNAL TO PLAY ALARM
	Alarm_COM(ALARM_PLAY);	
	// ENTER WAITING STATE 
	pointerToState_ALMANG = STATE(alarmManger_waiting);

}
STATE_DEFINE(alarmManger_waiting)
{
	// wait for 60 sec timer then goto ALARM OFF STATE
	// emulate delay func
	// WAIT FOR TIMER EXPIRE
	volatile int i = 6000;
	Delay(i);
	// GOTO ALARM OFF STATE
	pointerToState_ALMANG = STATE(alarmManger_sendAlarmOFF);
}
void HighPressure_COM(int isExceddThershold)
{
	isPressureDetected = isExceddThershold; 

}