# 1 "PIR.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "PIR.c"
# 14 "PIR.c"
# 1 "../../LIB/BIT_MATH/BIT_MATH.h" 1
# 15 "PIR.c" 2
# 1 "../../LIB/STD_TYPES/STD_TYPES.h" 1
# 10 "../../LIB/STD_TYPES/STD_TYPES.h"
 typedef unsigned char u8;
 typedef unsigned int u16;
 typedef unsigned long int u32;

 typedef char s8;
 typedef int s16;
 typedef long int s32;
# 16 "PIR.c" 2
# 1 "../../LIB/MAPPING/MAPPING.h" 1
# 66 "../../LIB/MAPPING/MAPPING.h"
typedef enum
{
    TIMER0 ,
    TIMER1 ,
    TIMER2

}TimerSelection_t ;
# 17 "PIR.c" 2
# 1 "../../MCAL/GPIO/GPIO_interface.h" 1
# 34 "../../MCAL/GPIO/GPIO_interface.h"
void GPIO_voidInit();
# 43 "../../MCAL/GPIO/GPIO_interface.h"
void GPIO_voidSetPinDirection(u8 copy_u8PortId,u8 copy_u8PinNumber ,u8 copy_u8PinDirection);
# 52 "../../MCAL/GPIO/GPIO_interface.h"
void GPIO_voidSetPinValue(u8 copy_u8PortId,u8 copy_u8PinNumber ,u8 copy_u8Value);







u8 GPIO_u8GetPinValue(u8 copy_u8PortId,u8 copy_u8PinNumber);







void GPIO_voidSetPortDirection(u8 copy_u8PortId ,u8 copy_u8PortDirection);







void GPIO_voidSetPortValue(u8 copy_u8PortId,u8 copy_u8Value);







void GPIO_voidTogglePin(u8 copy_u8PortId,u8 copy_u8PinNumber);






void GPIO_voidSPI_MasterInit(void);






void GPIO_voidSPI_SlaveInit(void);
# 18 "PIR.c" 2

# 1 "../../MCAL/EXTI/EXT_INT_interface.h" 1
# 34 "../../MCAL/EXTI/EXT_INT_interface.h"
void EXTINT_voidInit(void);






void EXTINT_voidEnable(u8 copy_u8InterruptID );
# 52 "../../MCAL/EXTI/EXT_INT_interface.h"
void EXTINT_voidMode(u8 copy_u8InterruptID , u8 copy_u8InterruptMode , void(*copy_funcAddress)(void));






void EXTINT_voidDisable(u8 copy_u8InterruptID );






void EXTINT_voidGlobalIntEnable(void);
# 20 "PIR.c" 2

# 1 "PIR.h" 1
# 82 "PIR.h"
void PIR_voidInit(void);




u8 PIR_u8ExistMovement(void);
# 22 "PIR.c" 2
# 64 "PIR.c"
void PIR_voidInit(void)
{


  GPIO_voidSetPinDirection(0,1,0);


}
# 84 "PIR.c"
u8 PIR_u8ExistMovement(void)
{
    u8 LOC_u8Result = 0 ;
    LOC_u8Result = GPIO_u8GetPinValue(0,1);
    return LOC_u8Result ;
}
