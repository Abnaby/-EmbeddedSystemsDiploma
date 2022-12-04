/*
 * ECU1_EntranceGate.c
 *
 * Created: 12/4/2022 2:38:35 PM
 * Author : Abnaby
 */ 

#include "APP/APP.h" 


int main(void)
{
	ECU1_Entance_APP_SETUP() ; 
    while (1) 
    {
		ECU1_Entance_APP_LOOP() ; 
    }
}

