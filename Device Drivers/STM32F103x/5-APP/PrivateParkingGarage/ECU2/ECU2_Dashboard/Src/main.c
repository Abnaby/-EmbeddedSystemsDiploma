
#include "APP/APP.h"


/**
 * @brief This is the main etery point of app.
 * 
 * @return will never return 
 */
int main(void){




	ECU3_Dashboard_APP_SETUP();

	while(1)
	{
		ECU3_Dashboard_APP_LOOP();


	}

}

