## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT
## Notes
	- Designed For 0:180° Servos 
	- Driver accuracy is ± 1° 
	
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return |Note|
| ------ | ------ |  ------ |  ------ |------ |
| Servo_voidInit(ServoMotor_Config *)  | init Servo motor |`ServoMotor_Config *ptr_usrConfig` pointer to <a href="#_SERVO_Config">Servo Motor Config</a>|`void`| |
| Servo_voidWrite(ServoMotor_Config* ,u8)  | write angle to servo motor |`ServoMotor_Config *ptr_usrConfig` pointer to <a href="#_SERVO_Config">Servo Motor Config</a><br/> `u8 copy_u8Angle` Angle to be written 0 --> 180 |`void`| |


### _SERVO_Config
```c
typedef struct
{
	ServoMotorPin_t selectServoPin;
}ServoMotor_Config;

```
### _selectServoPin
```c
typedef enum
{	
	// Timer 1 Pins
	SERVO_ATTTCH_PD4 = PWM1_PD4_PFC_SET_AT_COMP|PIN4 	,
	SERVO_ATTTCH_PD5 = PWM1_PD5_PFC_SET_AT_COMP|PIN5
	
}ServoMotorPin_t  
; 
```
| Param	| Description |
|------|--------------|
|SERVO_ATTTCH_PD4 | Connect A0 of Servo Motor To PD4 | 
|SERVO_ATTTCH_PD5 | Connect A0 of Servo Motor To PD5 |

## Note
1- When Use `SERVO_ATTTCH_PD5` or `SERVO_ATTTCH_PD4 and SERVO_ATTTCH_PD5` Together Must Disable `ANTI_GLITCH` from `PWM_Config.h`

### Full Example  
> Hardware Setup  
![image](https://drive.google.com/uc?export=download&id=1mfCEh4Gd--6RWDu7s65zpVxUAHCkk9qP)
>SW Setup
![image](https://drive.google.com/uc?export=download&id=1f92xqejsPLwy5q0ALmFVb1ZqKwx7G2KW)
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "ServoMotor.h"

ServoMotor_Config myServo = {SERVO_ATTTCH_PD5};
ServoMotor_Config myServo2 = {SERVO_ATTTCH_PD4};
	
int main(void)
{
	Servo_voidInit(&myServo);
	Servo_voidInit(&myServo2);
	Servo_voidWrite(&myServo,25);
	Servo_voidWrite(&myServo2,180);
    while(1)
    {
        
    }
    return 0;
}
```
> Result
![image](https://drive.google.com/uc?export=download&id=1BEf-tToE656fIK0l-RpKznoHetI2DJQK)



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

