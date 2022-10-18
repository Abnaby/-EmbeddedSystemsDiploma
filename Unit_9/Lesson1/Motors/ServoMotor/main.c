#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "ServoMotor.h"

ServoMotor_Config myServo = {SERVO_ATTTCH_PD4};
int main(void)
{
    Servo_voidInit(&myServo);
    Servo_voidWrite(&myServo,25);
    while(1)
    {
        
    }
    return 0;
}