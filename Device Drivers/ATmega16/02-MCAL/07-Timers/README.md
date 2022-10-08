# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT


## Notes

## V1 Features : 
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
|Timer_voidInitTimer0(Timer0Config_t)|This Function Used to Init Timer0 Only|`Timer0Config_t *ptr_userConfig` pointer to struct that holds <a href="#Timer0-Configuration">user configuration for timer0</a>  |`void`|| 
|Timer_voidStartTimer0(void)|This Function Used to Start Timer0 for counting|`void`|`void`|| 
|Timer_voidStopTimer0(void)|This Function Used to Stop Timer 0 from Counting and clear Counter|`void`|`void`|| 
|Timer_u8GetCounterTimer0(u8*)|This function used to get number of ticks from when i start timer|`u8 *pu8GetTicks` This function used to get number of ticks from when start timer. |`void`||
 |Timer_u8SetCounterTimer0(u8)|This function used to set number of ticks to start count from it.|`u8 copy_u8SetTicks` number of ticks will loaded into TCNT0 reg. |`void`|Normally used with `Normal Mode` to set init value of `TCNT0`|
|Timer_voidSetBusyWait_ms(TimerSelection_t , u16 )|This Function Used to make synchronous timer delay in ms .|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16DelayMs` delay time in ms.  |`void`| Designed to work only with `Normal Mode`|
|Timer_voidSetBusyWait_us(TimerSelection_t , u16 )|This Function Used to make synchronous timer delay in us .|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16DelayUs` delay time in us.  |`void`| Designed to work only with `Normal Mode`|
|Timer_voidSetOVInterrupState(TimerSelection_t , TIM_OverflowInterrupt )|This Function Used to Enable/Disable Overflow Interupt.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM_OverflowInterrupt copyTimerState` Select from <a href="#TIM0-OVInterrupt">@ref TIM_OverflowInterrupt</a>.  |`void`||
|Timer_voidSetOverflowCallback(TimerSelection_t , ptr_VoidFcn )|This Function Used to Set Callback fcn.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `ptr_VoidFcn ovflowCallback` Pointer to Callback Function  |`void`||
|Timer_voidSetCompareValue(TimerSelection_t , u16 )|This Function Used to Set MAX to @param copy_u16CompVal  |`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 copy_u16CompVal` Pointer to Callback Function  |`void`| Check Timer Ranges|
|Timer_voidSetCompareMatchCallback(TimerSelection_t , ptr_VoidFcn )|This Function Used to Set Callback fcn for compare match ISR.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `ptr_VoidFcn cmpMatchCallback` pointer to fcn execute at compare match  |`void`||
|Timer_voidSetCompMatchInterrupState(TimerSelection_t  , TIM_OverflowInterrupt )|This Function Used to Enable/Disable Compare Match Interupt.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM_OverflowInterrupt copyTimerState` select from @ref TIM_CompareMatchInterrupt enum  |`void`||
|Timer_voidSetIntervalSingleMS(TimerSelection_t  , u16  , ptr_VoidFcn )|This Function Used to Make Interval Once Asynchronously.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16IntervalTimeMS` Set time of Interval in milli second <br/> `ptr_VoidFcn intervalCallback` pointer to callback function |`void`|Works With `CTC Mode` <br/> Preferred to set Prescaler in value 1024 |
|Timer_voidSetIntervalPeriodicMS(TimerSelection_t  , u16  , ptr_VoidFcn )|This Function Used to Make Interval Periodic Asynchronously.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16IntervalTimeMS` Set time of Interval in milli second <br/> `ptr_VoidFcn intervalCallback` pointer to callback function |`void`|Works With `CTC Mode` <br/> Preferred to set Prescaler in value 1024 |
|Timer_voidOutputPinMode(TimerSelection_t , TIM0_CompereOutputPin )|This Function Used to Generate output at OCR0 Value.|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM0_CompereOutputPin copy_stateOfOCRPin` select from @ref  <a href="#TIM0-CompereOutputPin">@ref TIM0_CompereOutputPin enum</a> |`void`| Designed to work only with `CTC Mode`|
|Timer_voidGenerateSignal(TimerSelection_t , u8 ,u8 )|This Function used to generate square wave signal in HZ with duty cycle.|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u8 copy_u8FreqInHz` frequency of signal in Hz <br/> `u8 copy_u8DutyCycle` Dutycycle of signal 0 : 100 |`void`| DWorks With `CTC Mode` <br/> Preferred to set Prescaler in value 1024|
### TIM-Selection
```c
typedef enum
{
    TIMER0 , 
    TIMER1 , 
    TIMER2 

}TimerSelection_t ;
```


### Timer0-Configuration 
```c
typedef struct
{
    TIM0_OpMode                      operationModeTIM0 ;                            // select from @ref TIM0_OpMode enum 
    TIM_ClockSelect                  clockSourceAndPrescalerTimer0 ;                // select from @ref TIM_ClockSelect enum  
}Timer0Config_t;
```
| Parameter Name | Usage |  Ref to its enum |
| ------ | ------ |  ------ | 
|operationModeTIM0| Select Mode of Timer 0 | See <a href="#TIM0-OpMode">@ref</a>| 
|clockSourceAndPrescalerTimer0  | Select Clock Source with Prescaler for Timer 0 | See <a href="#TIM-ClockSelect">@ref</a> | 
|compareMatchInterruptTimer0 | Enable/Disable Compare Match Mode Interrupt |  See <a href="#TIM0-CompMatchInterrupt">@ref</a> | 



### TIM0-OpMode
```c
typedef enum
{
    TIM0_Normal_Mode = 0x00 ,      
    TIM0_CTC_Mode    = 0x08          
}TIM0_OpMode;
```
| Parameter Name | Usage | 
| ------ | ------ |
|TIM0_Normal_Mode | Select Normal Mode for Timer 0 |
|TIM0_CTC_Mode | Select Clear Timer and Compare Match Mode for  Timer 0 | 

### TIM-ClockSelect
```c
typedef enum
{
    TIMER_DISABLE                    ,
    TIMER_CLK_OVR_1                  ,
    TIMER_CLK_OVR_8                  ,
    TIMER_CLK_OVR_64                 ,
    TIMER_CLK_OVR_256                ,
    TIMER_CLK_OVR_1024               ,
    TIMER_CLK_FROM_T0_FALLING        ,
    TIMER_CLK_FROM_T0_RAISING
}TIM_ClockSelect;
```

| Parameter Name | Usage | 
| ------ | ------ |
|TIMER_DISABLE | Disable Timer 0 Module |
|TIMER_CLK_OVR_1 | select Fclk / 1 as a clock for Timer 0 | 
|TIMER_CLK_OVR_8 | select Fclk / 8 as a clock for Timer 0 | 
|TIMER_CLK_OVR_64 | select Fclk / 64 as a clock for Timer 0 | 
|TIMER_CLK_OVR_256 | select Fclk / 256 as a clock for Timer 0 | 
|TIMER_CLK_OVR_1024 | select Fclk / 1024 as a clock for Timer 0 | 
|TIMER_CLK_FROM_T0_FALLING | External clock source on T0 pin. Clock on falling edge for Timer 0 | 
|TIMER_CLK_FROM_T0_RAISING | External clock source on T0 pin. Clock on rising edge  for  Timer 0 | 
#### Note: 
        - If external pin modes are used for the Timer/Counter0, transitions on the T0 pin will clock the counter even if the pin is configured as an output. 


### TIM0-OVInterrupt
```c
typedef enum
{
    TIM_OV_DISABLE ,
    TIM_OV_ENABLE 
}TIM_OverflowInterrupt ; 
```
| Parameter Name | Usage | 
| ------ | ------ |
|TIM_OV_DISABLE | Disable Interrupt At Timer0 Overflow |
|TIM_OV_DISABLE | Enable Interrupt At Timer0 Overflow |

| Timer Mode | TOV0 Flag Set-on | 
| ------ | ------ |
|Normal Mode | MAX (0xFF) |
|CTC Mode  | MAX (0xFF) |

### TIM0-CompMatchInterrupt
```c
typedef enum
{
    TIM_OCM_DISABLE ,
    TIM_OCM_ENABLE 
}TIM_CompareMatchInterrupt ; 
```
| Parameter Name | Usage | 
| ------ | ------ |
|TIM_OCM_DISABLE | Disable Interrupt At Timer0 Compare Match |
|TIM_OCM_ENABLE | Enable Interrupt At Compare Match |

| Timer Mode | TOP | 
| ------ | ------ |
|Normal Mode | 0xFF |
|CTC Mode  | OCR0 |
#### Notes: 
        - Using the output compare to generate waveforms in Normal mode is not recommended, since this will occupy too much of the CPU time.
        -  the OC0 output can be set to toggle its logical level on each compare match by setting the Compare Output mode bits to toggle mode (COM01:0 = 1). 
        - The OC0 value will not be visible on the port pin unless the data direction for the pin is set to output.
        - the interrupt handler routine can be used for updating the TOP value
        - The counter value (TCNT0) increases until a compare match occurs between TCNT0 and OCR0, and then counter (TCNT0) is cleared.
        - If the new value written to OCR0 is lower than the current value of TCNT0, the counter will miss the compare match.

### TIM0-CompereOutputPin

```c
typedef enum
{
    TIM0_OC0_NOT_CONNECTED = 0x00 ,
    TIM0_OC0_TOGGLE        = 0x10 ,
    TIM0_OC0_CLEAR         = 0x20 ,
    TIM0_OC0_SET           = 0x30
}TIM0_CompereOutputPin;
```
Compare Output Mode, non-PWM Mode

| Parameter Name | Usage | 
| ------ | ------ |
|TIM0_OC0_NOT_CONNECTED | Normal port operation, OC0 disconnected |
|TIM0_OC0_TOGGLE | Toggle OC0 on compare match |
|TIM0_OC0_CLEAR | Clear OC0 on compare match |
|TIM0_OC0_SET | Set OC0 on compare match |
#### Note: 
        - If external pin modes are used for the Timer/Counter0, transitions on the T0 pin will clock the counter even if the pin is configured as an output. This feature allows software control of the counting.


# Full Example 
Wave Specs
    - 50 hZ
    - 50% Duty Cycle  
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "TIMERS_Interface.h"
#include "EXT_INT_interface.h"

Timer0Config_t myTimer0 = {TIM0_CTC_Mode , TIMER_CLK_OVR_1024};
int main(void)
{
    GPIO_voidInit();
    Timer_voidInitTimer0(&myTimer0); 
    GPIO_voidSetPinDirection(PORTB, PIN3, OUTPUT);
    GPIO_voidSetPinValue(PORTB, PIN3, LOW);
    Timer_voidGenerateSignal(TIMER0,50,50);
    Timer_voidStartTimer0();
    EXTINT_voidGlobalIntEnable();   
    while(1)
    {

        
    }
    return 0;
}
```
![Timing Diagram](https://drive.google.com/uc?export=download&id=1bebLBB3_HEQvDFzLn3jwR1NGHsnL7pY1)
![Output](https://drive.google.com/uc?export=download&id=1y-NEcn57g69LsyzwhlDegB4h0ax6lKtt)

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
