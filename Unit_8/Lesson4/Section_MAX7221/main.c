

#include "STD_TYPES.h"
#include "MAPPING.h"
#include "BIT_MATH.h"
#include "max7221.h"

#include <util/delay.h>
int main(void)
{
	MAX7221_Config myDisp =  {MAX7221_DIG_0_7} ; 
	MAX7221_Init(&myDisp);  
	
	while(1)
	{
		for(int i = 0 ; i <= 7 ; i++)
		{
				MAX7221_SendData(i,i);
				_delay_ms(100); 
		}
		
	}
	return 0;
}
