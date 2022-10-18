# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT


## Notes

## V1 Features : 
    -  Covered in Timer0 
        1- Normal Mode
        2- Clear Timer on Compare Match Mode(CTC)
    -  Coverd in Timer2 
        1- Asynchronous Mode
    - Coverd in Timer3 
        1- Input Capture Mode
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
|Timer_voidInitTimer0(Timer0Config_t)|This Function Used to Init Timer0 Only|`Timer0Config_t *ptr_userConfig` pointer to struct that holds <a href="#Timer0-Configuration">user configuration for timer0</a>  |`void`|`TIMER0` Only| 
|Timer_voidInitTimer1(Timer1Config_t)|This Function Used to Init Timer1 Only|`Timer1Config_t *ptr_userConfig` pointer to struct that holds <a href="#Timer1-Configuration">user configuration for timer1</a>  |`void`|`TIMER1` Only| 
|Timer_voidInitTimer2(Timer2Config_t)|This Function Used to Init Timer2 Only|`Timer2Config_t *ptr_userConfig` pointer to struct that holds <a href="#Timer2-Configuration">user configuration for timer0</a>  |`void`|`TIMER2` On;y| 
|Timer_voidStartTimer(TimerSelection_t)|This Function Used to Start Timerx for counting|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> |`void`|For All Timers| 
|Timer_voidStopTimer(TimerSelection_t)|This Function Used to Stop Timerx from Counting and clear Counter|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> |`void`|For All Timers| 
|Timer_u8GetCounterTimer(TimerSelection_t,u8*)|This function used to get number of ticks from when i start timer|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/>`u8 *pu8GetTicks` This function used to get number of ticks from when start timer. |`void`|For All Timers|
 |Timer_u8SetCounterTimer(TimerSelection_t,u16)|This function used to set number of ticks to start count from it.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 copy_u8SetTicks` number of ticks will loaded into TCNTx reg. |`void`|Normally used with `Normal Mode` to set init value of `TCNTx` <br/> for all timers|
|Timer_voidSetBusyWait_ms(TimerSelection_t , u16 )|This Function Used to make synchronous timer delay in ms .|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16DelayMs` delay time in ms.  |`void`| Designed to work only with `Normal Mode` <br/> `TIMER0 and TIMER2` Only |
|Timer_voidSetBusyWait_us(TimerSelection_t , u16 )|This Function Used to make synchronous timer delay in us .|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16DelayUs` delay time in us.  |`void`| Designed to work only with `Normal Mode` <br/> Doesn't Supported in Timer2 in `Asynchronous Mode` and `TIMER1`|
|Timer_voidSetOVInterrupState(TimerSelection_t , TIM_OverflowInterrupt )|This Function Used to Enable/Disable Overflow Interupt.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM_OverflowInterrupt copyTimerState` Select from <a href="#TIM-OVInterrupt">@ref TIM_OverflowInterrupt</a>.  |`void`|For All Timers|
|Timer_voidSetOverflowCallback(TimerSelection_t , ptr_VoidFcn )|This Function Used to Set Callback fcn.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `ptr_VoidFcn ovflowCallback` Pointer to Callback Function  |`void`|For All Timers|
|Timer_voidSetCompareValue(TimerSelection_t , u16 )|This Function Used to Set MAX to @param copy_u16CompVal  |`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 copy_u16CompVal` Pointer to Callback Function  |`void`| Timer0 Only|
|Timer_voidSetCompareMatchCallback(TimerSelection_t , ptr_VoidFcn )|This Function Used to Set Callback fcn for compare match ISR.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `ptr_VoidFcn cmpMatchCallback` pointer to fcn execute at compare match  |`void`|Timer0 Only|
|Timer_voidSetCompMatchInterrupState(TimerSelection_t  , TIM_OverflowInterrupt )|This Function Used to Enable/Disable Compare Match Interupt.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM_OverflowInterrupt copyTimerState` select from @ref TIM_CompareMatchInterrupt enum  |`void`|Timer0 Only|
|Timer_voidSetIntervalSingleMS(TimerSelection_t  , u16  , ptr_VoidFcn )|This Function Used to Make Interval Once Asynchronously.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16IntervalTimeMS` Set time of Interval in milli second <br/> `ptr_VoidFcn intervalCallback` pointer to callback function |`void`|Works With `CTC Mode` <br/> Preferred to set Prescaler in value 1024 <br/> Timer0 Only |
|Timer_voidSetIntervalPeriodicMS(TimerSelection_t  , u16  , ptr_VoidFcn )|This Function Used to Make Interval Periodic Asynchronously.|`TimerSelection_t copyTimerIndex` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u16 Copy_u16IntervalTimeMS` Set time of Interval in milli second <br/> `ptr_VoidFcn intervalCallback` pointer to callback function |`void`|Works With `CTC Mode` <br/> Preferred to set Prescaler in value 1024 <br/> Timer0 Only  |
|Timer_voidOutputPinMode(TimerSelection_t , TIM0_CompereOutputPin )|This Function Used to Generate output at OCR0 Value.|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM0_CompereOutputPin copy_stateOfOCRPin` select from @ref  <a href="#TIM0-CompereOutputPin">@ref TIM0_CompereOutputPin enum</a> |`void`| Designed to work only with `CTC Mode` <br/> Timer0 Only |
|Timer_voidGenerateSignal(TimerSelection_t , u8 ,u8 )|This Function used to generate square wave signal in HZ with duty cycle.|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `u8 copy_u8FreqInHz` frequency of signal in Hz <br/> `u8 copy_u8DutyCycle` Dutycycle of signal 0 : 100 |`void`| DWorks With `CTC Mode` <br/> Preferred to set Prescaler in value 1024 <br/> Timer0 Only |
|Timer_voidInputCaptureTicksSynch(TimerSelection_t,  TIM1_EventCapturing , u16  )|This Fuction Used To Get Ticks Between Two Events Synchronous.|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM1_EventCapturing copy_TriggerEvent` Select from <a href="#TIM1_EventTrigger">@ref TIM1_EventTrigger enum</a> <br/> `u16 *copyCounts` pointer to variable hold number of ticks |`void`| Timer1 Only |
|Timer_voidInputCaptureInterrupt(TimerSelection_t,  TIM1_EventCapturing , ptr_VoidFcn  )|This Fuction Used To Detect Event in Pin.|`TimerSelection_t timerNum` select from @ref  <a href="#TIM-Selection">@ref TimerSelection_t enum</a> <br/> `TIM1_EventCapturing copy_TriggerEvent` Select from <a href="#TIM1_EventTrigger">@ref TIM1_EventTrigger enum</a> <br/> `ptr_VoidFcn setCallBackFn` pointer to function |`void`| Timer1 Only |
|Timer_voidGetFlagsRegStatus(u8 *)|This Fuction Used To get Flags status.|`u8 * ptr_u8Reg` pointer to status register|`void`| All Timers |


## General 
### TIM-Selection
```c
typedef enum
{
    TIMER0 , 
    TIMER1 , 
    TIMER2 

}TimerSelection_t ;
```
### TIM-OpModes
```c
typedef enum
{
    TIM_Normal_Mode = 0x00 ,      
    TIM_CTC_Mode    = 0x08          
}TIM_OpMode;
```
| Parameter Name | Usage | 
| ------ | ------ |
|TIM_Normal_Mode | Select Normal Mode for Timerx |
|TIM_CTC_Mode | Select Clear Timer and Compare Match Mode for  Timerx | 

### TIM-OVInterrupt
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


### TIM-CompMatchInterrupt
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

#### Notes: 
        - Using the output compare to generate waveforms in Normal mode is not recommended, since this will occupy too much of the CPU time.
        -  the OC0 output can be set to toggle its logical level on each compare match by setting the Compare Output mode bits to toggle mode (COM01:0 = 1). 
        - The OC0 value will not be visible on the port pin unless the data direction for the pin is set to output.
        - the interrupt handler routine can be used for updating the TOP value
        - The counter value (TCNT0) increases until a compare match occurs between TCNT0 and OCR0, and then counter (TCNT0) is cleared.
        - If the new value written to OCR0 is lower than the current value of TCNT0, the counter will miss the compare match.

## Timer0
### Timer0-Configuration 
```c
typedef struct
{
    TIM_OpMode                      operationModeTIM0 ;                            // select from @ref TIM_OpMode enum 
    TIM0_ClockSelect                  clockSourceAndPrescalerTimer0 ;                // select from @ref TIM0_ClockSelect enum 
}Timer0Config_t;
```
| Parameter Name | Usage |  Ref to its enum |
| ------ | ------ |  ------ | 
|operationModeTIM0| Select Mode of Timer 0 | See <a href="#TIM-OpModes">@ref</a>| 
|clockSourceAndPrescalerTimer0  | Select Clock Source with Prescaler for Timer 0 | See <a href="#TIM-ClockSelect">@ref</a> | 

### TIM-ClockSelect
```c
typedef enum
{
    TIMER0_DISABLE                    ,
    TIMER0_CLK_OVR_1                  ,
    TIMER0_CLK_OVR_8                  ,
    TIMER0_CLK_OVR_64                 ,
    TIMER0_CLK_OVR_256                ,
    TIMER0_CLK_OVR_1024               ,
    TIMER0_CLK_FROM_T0_FALLING        ,
    TIMER0_CLK_FROM_T0_RAISING
}TIM0_ClockSelect;
```

| Parameter Name | Usage | 
| ------ | ------ |
|TIMER0_DISABLE | Disable Timer 0 Module |
|TIMER0_CLK_OVR_1 | select Fclk / 1 as a clock for Timer 0 | 
|TIMER0_CLK_OVR_8 | select Fclk / 8 as a clock for Timer 0 | 
|TIMER0_CLK_OVR_64 | select Fclk / 64 as a clock for Timer 0 | 
|TIMER0_CLK_OVR_256 | select Fclk / 256 as a clock for Timer 0 | 
|TIMER0_CLK_OVR_1024 | select Fclk / 1024 as a clock for Timer 0 | 
|TIMER0_CLK_FROM_T0_FALLING | External clock source on T0 pin. Clock on falling edge for Timer 0 | 
|TIMER0_CLK_FROM_T0_RAISING | External clock source on T0 pin. Clock on rising edge  for  Timer 0 | 
#### Note: 
        - If external pin modes are used for the Timer/Counter0, transitions on the T0 pin will clock the counter even if the pin is configured as an output. 

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
## Timer1
### Timer1-Configuration 
```c
typedef struct
{
    TIM_OpMode                      operationModeTIM1 ;                            // select from @ref TIM_OpMode enum 
    TIM1_ClockSelect                clockSourceAndPrescalerTimer1 ;                // select from @ref TIM1_ClockSelect enum 
}Timer1Config_t;
```
| Parameter Name | Usage |  Ref to its enum |
| ------ | ------ |  ------ | 
|operationModeTIM1| Select Timer 1 Clock Source |See <a href="#TIM1_ClockSource">@ref</a>  | 
|clockSourceAndPrescalerTimer1  | Select Clock Source with Prescaler for Timer 2 | See <a href="#TIM2_ClockSelect">@ref</a> | 
### TIM1_ClockSelect
```c
typedef enum
{
    TIMER1_DISABLE                    ,
    TIMER1_CLK_OVR_1                  ,
    TIMER1_CLK_OVR_8                  ,
    TIMER1_CLK_OVR_64                 ,
    TIMER1_CLK_OVR_256                ,
    TIMER1_CLK_OVR_1024               ,
    TIMER1_CLK_FROM_T0_FALLING        ,
    TIMER1_CLK_FROM_T0_RAISING
}TIM1_ClockSelect;
```
### TIM1_EventTrigger
```c
typedef enum
{
    TIM1_CAPT_FALLING_EDG = 0x0 , 
    TIM1_CAPT_RAISING_EDG = 0x40 

}TIM1_EventCapturing; 
```
## Timer2
### Timer2-Configuration 
```c
typedef struct
{
    TIM2_ClockSource                 clkSourceOfTimer2 ;                            // select from @ref TIM2_ClockSource enum 
    TIM2_ClockSelect                 clkSourceAndPrescalerTimer2 ;                // select from @ref TIM2_ClockSelect enum 
    TIM_OpMode                      operationModeTIM2 ;                            // select from @ref TIM_OpMode enum 
}Timer2Config_t;
```
| Parameter Name | Usage |  Ref to its enum |
| ------ | ------ |  ------ | 
|clkSourceOfTimer2| Select Timer 2 Clock selection  |See <a href="#TIM2_ClockSelect">@ref</a>  | 
|operationModeTIM2  | Select Clock Source with Prescaler for Timer 1 | See <a href="#TIM-OpModes">@ref</a> | 

### TIM2_ClockSource
```c
typedef enum
{
    TIMER2_MAIN_SYS_IO_CLK    ,         // BY DEFAULT SELECTED 
    TIMER2_EXTERNAL_CLK   = 0x8         //  By setting the AS2 bit in ASSR 

}TIM2_ClockSource; 
```
| Parameter Name | Usage | Note | 
| ------ | ------ | ------ |
|TIMER2_MAIN_SYS_IO_CLK| Use Internal Oscillator  ||
|TIMER2_EXTERNAL_CLK  | Use External Crystal Conncted to PB6 and PB7 | Usually Uses 32KHz Oscillator| 
Note
- If Select TIMER2_EXTERNAL_CLK Don't forget to set value of crystal in 
    ```c
    #define TIMER2_EXTERNAL_CLK_VAL_IN_HZ  32768 
    ```

### TIM2_ClockSelect
```c
typedef enum
{
    TIMER2_DISABLE                    ,
    TIMER2_CLK_OVR_1                  ,
    TIMER2_CLK_OVR_8                  ,
    TIMER2_CLK_OVR_32                 ,
    TIMER2_CLK_OVR_64                ,
    TIMER2_CLK_OVR_128               ,
    TIMER2_CLK_OVR_256               ,
    TIMER2_CLK_OVR_1024               
}TIM2_ClockSelect;
```


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

Timer0Config_t myTimer0 = {TIM_CTC_Mode , TIMER0_CLK_OVR_1024};
int main(void)
{
    GPIO_voidInit();
    Timer_voidInitTimer0(&myTimer0); 
    GPIO_voidSetPinDirection(PORTB, PIN3, OUTPUT);
    GPIO_voidSetPinValue(PORTB, PIN3, LOW);
    Timer_voidGenerateSignal(TIMER0,50,50);
    Timer_voidStartTimer(TIMER0);
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
