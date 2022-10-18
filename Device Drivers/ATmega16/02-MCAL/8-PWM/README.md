# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT


## Notes

## V1 Features : 
    1- Coverd Fast PWM Mode and Phase Correct in Timer0 
    2- Covered 10-Bit Fast PWM Mode and Phase&Frequency Correct in Timer1 
    3- Coverd Fast PWM Mode Only in TIMER2
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
|PWM_voidInit(PWM_config_t*)|This function used to Init PWM Module for Timedx With User Config.|`PWM_config_t *ptr_userConfig` pointer to struct that holds <a href="#PWM-Configuration">user configuration</a>  |`void`||
|PWM_voidSetOCPin(PWM_config_t *,PWM_OC_Pin )|This Function Used to set Function of OC Pin.|`PWM_config_t *ptr_userConfig` pointer to struct that holds <a href="#PWM-Configuration">user configuration</a> <br/> `PWM_OC_Pin setOCpinMode`  select Output pin from<a href="#PWM-OC_PIN">@ref PWM_OC_Pin</a>  |`void`| Must Make Corresponding Pin As Output from GPIO Driver|
|PWM_voidSetDuty(PWM_config_t *,u16 )|This Function Used to generate duty cycle on OC pin.|`PWM_config_t *ptr_userConfig` pointer to struct that holds <a href="#PWM-Configuration">user configuration</a> <br/> `u16 copy_u16fDuty` Duty Cycle of Wave |`void`|Designed to Work With FastMode PWM only <br/> For `Timer0/2` Range 0-->255 <br/> For `Timer1` Range 0--> 1023 |
|PWM_voidGeneratePWM(PWM_config_t* , u8  , u8 )|This function Used To Generate Symmetric and Asymmetric PWM.|`PWM_config_t *ptr_userConfig` pointer to struct that holds <a href="#PWM-Configuration">user configuration</a> <br/> `u8 copy_u8FreqInHz` Freq In Hz <br/> `u8 copy_u8DutyCycle`  u8 copy_u8DutyCycle From 0--> 100% |`void`|`PWM0` `PWM1` Only Supported <br/> `TIMER0` Works in Phase Correct PWM and Set Period by getting best prescaler verfiy your freq <br/> `TIMER1` Works in Phase and Frequency Correct  <br/> `Note` Prefered to used High Prescalers Val  <br/> <h3>Don't Fotget To Modifiy Config  Macro `TIM1_ANTI_GLITCH` Form Config File <h3> | 
|PWM_voidPhaseFrequencyCorrectSetValues(PWM_config_t* ,PWM_OC_Pin setOCpinMode, u8  , u8 )|This Function Used To Set Phase_Freq Parameters TOP,COMP Values.|`PWM_config_t *ptr_userConfig` pointer to struct that holds <a href="#PWM-Configuration">user configuration</a> <br/> `PWM_OC_Pin setOCpinMode`  select Output pin from<a href="#PWM-OC_PIN">@ref PWM_OC_Pin</a>  <br/> `u16 copy_u16TopValue`  Set Frequency of Wave From 0--> (2^16)-1  <br/> `u16 copy_u16CompValue` Set Duty Cycle of wave by setting compare value  |`void`|Only With Timer1/PWM1| 


## PWM-Configuration 
```c
typedef struct
{
    TimerSelection_t    TimerNumber ; 
    PWM_ModeOfOperation PWM_MOP ;
    PWM_TimerPrescaler  TimerPrescaler  ; 
}PWM_config_t;
```
| Parameter Name | Usage |  Ref to its enum |
| ------ | ------ |  ------ | 
|TimerNumber| Select Timer of PWM | See <a href="#TIM-Selection">@ref</a>| 
|PWM_MOP  | Select Modes of operation | See <a href="#PWM-Modes">@ref</a> | 
|TimerPrescaler  | used to Select Timer Module Prescaler | See <a href="#TIM-ClockPrescaler">@ref</a> | 
## Predefined Configuration 
![image](https://drive.google.com/uc?export=download&id=1eFl6ZlqgktUniUwwEfDyQkX7dLk41aQP)

| Parameter Name | Usage |
| ------ | ------ |
| ANTI_GLITCH_ENABLE | This Used to use OCR1A as a buffer Register | 
| ANTI_GLITCH_DISABLE | Allow Glitching if change value of PWM in Run Time |

### Glitch Effect 

![image](https://drive.google.com/uc?export=download&id=1eJae6g3q8l_lUPQseQdVMeUiTn5jiWXf)


### TIM-ClockPrescaler
```c
typedef enum
{
    PWM_TIMER0_DISABLE                    ,
    PWM_TIMER0_CLK_OVR_1                  ,
    PWM_TIMER0_CLK_OVR_8                  ,
    PWM_TIMER0_CLK_OVR_64                 ,
    PWM_TIMER0_CLK_OVR_256                ,
    PWM_TIMER0_CLK_OVR_1024               ,
    /*  Timer   1   */
    PWM_TIMER1_DISABLE  = 0x0             ,
    PWM_TIMER1_CLK_OVR_1                  ,
    PWM_TIMER1_CLK_OVR_8                  ,
    PWM_TIMER1_CLK_OVR_64                 ,
    PWM_TIMER1_CLK_OVR_256                ,
    PWM_TIMER1_CLK_OVR_1024               ,
    /*  Timer 2 */
    PWM_TIMER2_DISABLE  = 0x0             ,
    PWM_TIMER2_CLK_OVR_1                  ,
    PWM_TIMER2_CLK_OVR_8                  ,
    PWM_TIMER2_CLK_OVR_32                 ,
    PWM_TIMER2_CLK_OVR_64                 ,
    PWM_TIMER2_CLK_OVR_128                ,
    PWM_TIMER2_CLK_OVR_256                ,
    PWM_TIMER2_CLK_OVR_1024               
}PWM_TimerPrescaler ;  
``` 
### PWM-Modes
```c
typedef enum
{
    PWM0_PHASE_CORRECT                  = 0x08 , 
    PWM0_FAST_MODE                      = 0x48 , 
    PWM1_PHASE_FREQ_CORRECT             = 0b1001 , 
    PWM1_FAST_MODE_10_BIT               = 0b0111 ,
    PWM2_FAST_MODE                      = 0x48   
}PWM_ModeOfOperation ; 
```
| Parameter Name | Usage | Timer |
| ------ | ------ |  ----- |
| PWM0_PHASE_CORRECT | Constant frequency with variation of pulse width  `symmetrical Wave` | Timer 0   | 
| PWM0_FAST_MODE | Constant frequency and pulse width or applications  `asymmetrical Wave` | Timer 0   |  
| PWM1_PHASE_FREQ_CORRECT |  Constant frequency with variation of pulse width  `symmetrical Wave` | Timer 1 |  
| PWM1_FAST_MODE_10_BIT | Constant frequency and pulse width or applications  `asymmetrical Wave` `More Accurate` | Timer 1 |  
| PWM2_FAST_MODE | Constant frequency and pulse width or applications  `asymmetrical Wave` | Timer 2 |  

Waves

![Waves](https://i.ibb.co/RpsYp3T/PWM-Modes.gif)

## Notes
    1- Fast PWM
        - provides a high frequency PWM waveform generation option
        - differs from the other PWM option by its single-slope operation
        - Due to the single-slope operation, the operating frequency of the fast PWM mode can be twice as high as the phase correct PWM mode that use dual-slope operation. 
        - This high frequency makes the fast PWM mode well suited for power regulation, rectification, and DAC applications
    2- Phase Correct 
        - High resolution phase correct PWM waveform generation option. 
        - PWM mode is based on a dual-slope operation
        - The dual-slope operation has lower maximum operation frequency than single slope operation
        - due to the symmetric feature of the dual-slope PWM modes, these modes are preferred for motor control applications
    3- Phase and Frequency Correct
        -  provides a high resolution phase and frequency correct PWM waveform generation option.
        - The phase and frequency correct PWM mode is, like the phase correct PWM mode, based on a dual-slope operation.
        - The dual-slope operation gives a lower maximum operation frequency compared to the single-slope operation.
        - due to the symmetric feature of the dual-slope PWM modes, these modes are preferred for motor control applications.

### TIM-Selection
```c
typedef enum
{
    TIMER0 , 
    TIMER1 , 
    TIMER2 

}TimerSelection_t ;
```
| Parameter Name | Usage | 
| ------ | ------ |  
| TIMER0 | For Timer 0   |  
| TIMER1 | For Timer 1 |  
| TIMER2 | For Timer 2 |  

### PWM-OC_PIN 
```c
typedef enum
{
    /*      TIMER 0     */ 
    PWM0_PB3_FM_NON_INVERTING           = 0x20 ,
    PWM0_PB3_FM_INVERTING               = 0x30 ,
    PWM0_PB3_PC_CLR_AT_COMP             = 0x20 ,
    PWM0_PB3_PC_SET_AT_COMP             = 0x30 ,
    /*      TIMER 1     */ 
    PWM1_PD5_FM_NON_INVERTING           = 0x80 ,
    PWM1_PD5_FM_INVERTING               = 0xC0 , 
    PWM1_PD4_FM_NON_INVERTING           = 0x20 ,
    PWM1_PD4_FM_INVERTING               = 0x30 ,
	PWM1_PD5_PFC_CLR_AT_COMP			= 0x80 , 
	PWM1_PD5_PFC_SET_AT_COMP			= 0xC0 , 
	PWM1_PD4_PFC_CLR_AT_COMP			= 0x20 , 
	PWM1_PD4_PFC_SET_AT_COMP			= 0x30 ,
    /*      TIMER 2     */
    PWM2_PD7_FM_NON_INVERTING           = 0x20 ,
    PWM2_PD7_FM_INVERTING               = 0x30
}PWM_OC_Pin ;
```
| Param | Description | Timer/PWM | Mode of Operation | Pin Numer |
|-----|-----|-----|-----| -----|
|PWM0_PB3_FM_NON_INVERTING | Clear OC0 on compare match, set OC0 at BOTTOM, (non-inverting mode) | Timer0/PWM0| FAST MODE | PB3 |
|PWM0_PB3_FM_INVERTING | Set OC0 on compare match, clear OC0 at BOTTOM, (inverting mode) | Timer0/PWM0| FAST MODE | PB3 |
|PWM0_PB3_PC_CLR_AT_COMP | Clear OC0 on compare match when up-counting. Set OC0 on compare match when downcounting. | Timer0/PWM0| PHASE CORRECT | PB3 |
|PWM0_PB3_PC_SET_AT_COMP | Set OC0 on compare match when up-counting. Clear on compare match when downcounting. | Timer0/PWM0| PHASE CORRECT | PB3 |
|PWM1_PD5_FM_NON_INVERTING | Clear OC1A on compare match, set OC1A at BOTTOM,(non-inverting mode) | Timer1/PWM1| FAST MODE | PD5 |
|PWM1_PD5_FM_INVERTING | Set OC1A on compare match, clear OC1A at BOTTOM,(inverting mode). | Timer1/PWM1| FAST MODE | PD5 |
|PWM1_PD4_FM_NON_INVERTING |  Clear OC1B on compare match, set OC1B at BOTTOM,(non-inverting mode)  | Timer1/PWM1| FAST MODE | PD4 |
|PWM1_PD4_FM_INVERTING | Set OC1B on compare match, clear OC1B at BOTTOM,(inverting mode).  | Timer1/PWM1| FAST MODE | PD4 |
|PWM1_PD5_PFC_CLR_AT_COMP | Clear OC1A on compare match when upcounting. Set OC1A on compare match when downcounting.| Timer1/PWM1| PHASE and FREQUENCY CORRECT | PD5 |
|PWM1_PD5_PFC_SET_AT_COMP | Set OC1A on compare match when upcounting. Clear OC1A on compare match when downcounting | Timer1/PWM1| PHASE and FREQUENCY CORRECT | PD5 |
|PWM1_PD4_PFC_CLR_AT_COMP | Clear OC1B on compare match when upcounting. Set OC1B on compare match when downcounting. | Timer1/PWM1| PHASE and FREQUENCY CORRECT |PD4 |
|PWM1_PD4_PFC_SET_AT_COMP | SSet OC1B on compare match when upcounting. Clear OC1B on compare match when downcounting | Timer1/PWM1| PHASE and FREQUENCY CORRECT | PD4 |
|PWM2_PD7_FM_NON_INVERTING | Clear OC2 on compare match, set OC0 at BOTTOM, (non-inverting mode) | Timer0/PWM0| FAST MODE | PD7 |
|PWM2_PD7_FM_INVERTING | Set OC2 on compare match, clear OC0 at BOTTOM, (inverting mode) | Timer0/PWM0| FAST MODE | PD7 |

## Explantion 
![Fast Mode](https://i.ibb.co/HCkYGpw/2.png)
![Phase Correct ](https://i.ibb.co/TtpkPNM/3.png)
![Phase and Frequency Correct ](https://i.ibb.co/QmbVLnL/Capture.png)






# Full Example 

```c
#define TIM1_ANTI_GLITCH    ANTI_GLITCH_ENABLE 
``` 
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "PWM_Interface.h"
#include "PWM_Private.h"

#include <util/delay.h>

PWM_config_t x = {TIMER1 , PWM1_PHASE_FREQ_CORRECT , PWM_TIMER1_CLK_OVR_1024};	
int main(void)
{
	
	GPIO_voidInit();
	PWM_voidInit(&x);
	PWM_voidSetOCPin(&x,PWM1_PD4_PFC_SET_AT_COMP);
	GPIO_voidSetPinDirection(PORTD, PIN4, OUTPUT);
	PWM_voidGeneratePWM(&x,100,70);
	while(1)
	{
		
	}
	return 0;
}
```
![image](https://drive.google.com/uc?export=download&id=1SdVMJyLDzaBiQmjdYCZmiK6bn85rTbiN)


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
