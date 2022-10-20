# External Interrupt Driver  
## Development
Microchip Studio 7 (Version: 7.0.2594 - )
© 2020 Microchip Technology, Inc.
All rights reserved.


OS Version: Microsoft Windows NT 6.2.9200.0
Platform: Win32NT

 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| ------ | ------ |  ------ |  ------ |  ------ |
|ADC_voidInit(ADC_config_t*)|This Function Used to Init ADC Module|`ADC_config_t *ptr_userConfig` pointer to struct that holds <a href="#ADC-Configuration">user configuration</a>  |`void`||
|ADC_voidEnable(void)|This Function Used To Enable ADC Module Manually|`void` |`void`||
|ADC_voidDisable(void)|This Function Used To Disable ADC Module Manually|`void` |`void`||
|ADC_voidSetInterruptStates(ADC_InterruptState)|This Function Used to En/Disable Interrupt Manually|`ADC_InterruptState IRQ_State` See <a href="#TIM-InterruprState">@ref</a>  |`void`| If Interrupt Enable Don't Foreget to enable Global Interrupt|
|ADC_voidReadVal(u16 *)|This Function Used to Read 10-Bit ADC Reg Values|`u16 *ptr_u16Val` pointer to 10-Bit Value |`void`||
|ADC_voidSetIRQ_CallBack(ptr_VoidFcn)|This Function used to set cllback function of end of conversion|`ptr_VoidFcn IEQ_CallBack` pointer to function |`void`||
|ADC_voidStartConvertionAsynch(ADC_ChennelNum)|This Function Used to Start Conversion on specific Channel Asynch|`ADC_ChennelNum copy_ChannelNum`select Channel Form  <a href="#TIM-ChennelNumber">@ref</a> |`void`||
|ADC_voidStartConvertionSynch(ADC_ChennelNum , u16* )|This Function Used to Start Conversion on specific Channel Synch|`ADC_ChennelNum copy_ChannelNum`select Channel Form  <a href="#TIM-ChennelNumber">@ref</a> <br/> `u16 *ptr_u16Val` pointer to 10-Bit Value |`void`||
|ADC_u8IsConversionComplete(void)|This Function Used to get status of conversion|`void`|`u8` States of Converstion <br/> 0 --> Conversion Completet <br/> 1 --> Not Complete||




## ADC-Configuration 
```c
typedef struct
typedef struct
{
    ADC_VoltageReference      ADC_voltageRef    ;   
    ADC_Prescaler             ADC_PrescalerSelect ; 
    ADC_RunningMode           ADC_RunningModeSelect ; 
    ADC_InterruptState        ADC_Interrupt     ;
}ADC_config_t;
```
| Parameter Name | Usage |  Ref to its enum |
| ------ | ------ |  ------ | 
|ADC_voltageRef| This Enum Hold Available Vref Options | See <a href="#ADC-VoltSelection">@ref</a>| 
|ADC_PrescalerSelect  | This Enum Used To Set CLK of ADC | See <a href="#ADC-Prescaler">@ref</a> | 
|ADC_RunningModeSelect  | This Enum Holds Available Options for ADC Running Mode | See <a href="#TIM-RunningMode">@ref</a> | 
|ADC_Interrupt  | used to Select Timer Module Prescaler | See <a href="#TIM-InterruprState">@ref</a> | 

### TIM-InterruprState
```c
typedef enum
{
    ADC_IRQ_DISABLE = 0 , 
    ADC_IRQ_ENABLE = 0x8 
}ADC_InterruptState ; 
```
#### Note 
    1- Enable Global Intterrupt If Used `ADC_IRQ_ENABLE`

### TIM-RunningMode
```c
typedef enum
{
    ADC_SINGLE_CONVERSION           = 0x20 
}ADC_RunningMode ;
```

### ADC-Prescaler
```c
typedef enum
{
    ADC_CHENNEL_0_SE       = 0 ,
    ADC_CHENNEL_1_SE       ,
    ADC_CHENNEL_2_SE       ,
    ADC_CHENNEL_3_SE       ,
    ADC_CHENNEL_4_SE       ,
    ADC_CHENNEL_5_SE       ,
    ADC_CHENNEL_6_SE       ,
    ADC_CHENNEL_7_SE       
}ADC_ChennelNum;
```
|Param | Description | Pin |
|-------|-------|-------|
|ADC_CHENNEL_0_SE|Channel 0 Signle Endded|`PA0`|
|ADC_CHENNEL_1_SE|Channel 1 Signle Endded|`PA1`|
|ADC_CHENNEL_2_SE|Channel 2 Signle Endded|`PA2`|
|ADC_CHENNEL_3_SE|Channel 3 Signle Endded|`PA3`|
|ADC_CHENNEL_4_SE|Channel 4 Signle Endded|`PA4`|
|ADC_CHENNEL_5_SE|Channel 5 Signle Endded|`PA5`|
|ADC_CHENNEL_6_SE|Channel 6 Signle Endded|`PA6`|
|ADC_CHENNEL_7_SE|Channel 7 Signle Endded|`PA7`|

#### Note 
    1- ADC requires an input clock frequency between 50 kHz and 200 kHz to get maximum resolution.
    2- If a lower resolution than 10 bits is needed, the input clock frequency to the ADC can be higher than 200 kHz to get a higher sample rate.
    3- If Use CPU_CLK 16 Mhz
<p align="center">
  <img src="https://i.ibb.co/1QRKFj1/Capture.png" />
</p>

### ADC-VoltSelection
```c
typedef enum
{
    ADC_REF_VREF_AREF	            = 0 , 
    ADC_REF_AVCC                    = 0x40 , 
    ADC_REF_INTERNAL_2P56_V         = 0xC0
}ADC_VoltageReference ; 
```
|Param | Description |
|-------|-------|
|ADC_REF_VREF_AREF|AREF, Internal Vref turned off|
|ADC_REF_AVCC|AREF, Internal Vref turned off|
|ADC_REF_INTERNAL_2P56_V|Internal 2.56V Voltage Reference with external capacitor at AREF pin|
# Full Example 
Pot Interface 
```c
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "ADC_Interface.h"
#include <util/delay.h>
#include "LCD.h"
#include "EXT_INT_interface.h"

ADC_config_t myADC = {ADC_REF_AVCC , ADC_PRESCALED_64 , ADC_SINGLE_CONVERSION , ADC_IRQ_DISABLE } ;
u8 arr[]=
{
	// < Enable,rsPin, rwPort,d4Port,d4Pin ....... d7Port,d7Pin> 
	//EN
	PORTC , PIN2 ,
	//RS
	PORTC , PIN0 ,
	//D4
	PORTD , PIN4 ,
	//D5
	PORTD , PIN5 ,
	//D6
	PORTD , PIN6 ,
	//D7
	PORTD , PIN7 
};
LCD_Config myLCD  = { 2 , 16 ,arr }  ; 
u16 convVal  = 0 ;
u8 buffer[10] ; 
void xxx (void); 
int main(void)
{
	/*	ADC INIT	*/
	ADC_voidInit(&myADC);
	ADC_voidSetInterruptStates(ADC_IRQ_ENABLE);
	ADC_voidSetIRQ_CallBack(xxx);
	/* LCD INIT	*/
	LCD_voidInit(&myLCD); 
	LCD_voidSendString(&myLCD,addString("LCD Initialized"));
	/*	INTERRUPT ENABLE	*/
	EXTINT_voidGlobalIntEnable();
    while(1)
    {
		ADC_voidStartConvertionAsynch(ADC_CHENNEL_7_SE);
		_delay_ms(500);
    }
    return 0;
}

void xxx (void)
{
	LCD_voidGotoXY(&myLCD,0,0);
	LCD_voidClear(&myLCD);
	ADC_voidReadVal(&convVal);
	itoa(convVal, buffer , 10 );
	LCD_voidSendString(&myLCD,buffer); 
}
```
![image](https://drive.google.com/uc?export=download&id=1XTykrooqiKji9T2XrJnan38ZSFVVgUno)


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
