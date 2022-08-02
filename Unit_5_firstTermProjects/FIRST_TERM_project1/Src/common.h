#ifndef _COMMON_IN_DRIVERS
#define _COMMON_IN_DRIVERS

// PREPROCESSOR APIS
#define STATE_DEFINE(_stateFuncName_) void ST_##_stateFuncName_(void)
#define STATE(_stateFuncName_)  ST_##_stateFuncName_
#define STATE_CALL(_stateFuncName_)  ST_##_stateFuncName_()

#define suint8 static unsigned int 
#define THERSHOLD_PRESSURE 20
// Communication APIs
/*
	@Description: its usage to send and recieve pressure values between sensor and mainAlgo
	@param: pressure value 
	@return: void
*/
void PressureValue_COM(int pVal);
/*
	@Description: its usage to send and recieve pressure state
	@param: 1--> preesure >= thershold 
			0--> preesure < thershold 
	@return: void
*/
void HighPressure_COM(int isExceddThershold);
/*
	@Description: its usage to send and recieve alarm state
	@param: 1--> preesure >= thershold ALARM PLAY
			0--> preesure < thershold ALARM STOP
	@return: void
*/
void Alarm_COM(int alarmState);




#endif // !_COMMON_IN_DRIVERS
