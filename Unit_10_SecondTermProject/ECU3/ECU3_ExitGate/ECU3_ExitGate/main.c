/*
 * ECU3_ExitGate.c
 *
 * Created: 12/9/2022 11:30:00 PM
 * Author : Abnaby
 */ 

#include "APP/APP.h" 


int main(void)
{
	ECU3_Exit_APP_SETUP() ; 
    while (1) 
    {
		ECU3_Exit_APP_LOOP() ; 
    }
}

