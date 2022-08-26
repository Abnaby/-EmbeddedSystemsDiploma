# External Interrupt Driver  
## Development
Atmel Studio 7 (Version: 7.0.2397 - ) 
© 2019 Microchip Technology, Inc.  
All rights reserved.  
  
OS Version: Microsoft Windows NT 6.2.9200.0  
Platform: Win32NT  
  
Installed Packages: Shell VSIX manifest - 7.0  
Shell VSIX manifest  
Version: 7.0  
Package GUID: e874ffe4-fbe3-4624-9a17-61014ede02d0  
Company: Atmel Corporation  
  
Installed Packages: Atmel Kits - 7.0.129    
Atmel Kits  
Version: 7.0.129    
Package GUID: 6F4B8FE4-C464-4916-8B43-AC92431C1CDF    
Company: Atmel  

## Notes
![N|Solid](https://i.ibb.co/6mNQhfT/Interrupt.png) 
- To Make Interrupt From Peripheral You Must :  
  1- Enable `PIE` (Peripheral Interrupt Enable).  
  2- Enable `GIE` (Global Interrupt Enable).  
- `PIF` Is Set Automatically When Peripheral Make Interrupt.   
  So, To Make Interrupt : 
  ```
  Set : 
    GIE=1
    PIE=1
    CODE
  ```
  - The interrupts will trigger even if the INT0:2 pins are configured as outputs.  
  - The external interrupts can be triggered by a falling or rising edge or a low level (`INT2` is only an edge triggered interrupt).
  - When the external interrupt is enabled and is configured as level triggered (only INT0/INT1), the interrupt will trigger `as long as the pin is held low`.
  - Low level interrupts on INT0/INT1 and the edge interrupt on INT2 are detected `asynchronously`.
## V1 Features : 
 Can Control INT0, INT1, INT2 in ATmega16A whether   
&nbsp; 1 - Disable All Interrupts.  
&nbsp; 2 - Enable Specific Interrupt.  
&nbsp; 3 - Disable Specific Interrupt.  
&nbsp; 4 - Set Sense(Mode) For Each External Interrupt.  
&nbsp; 4 - Enable or Disable Global Interrupt.  
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return |
| ------ | ------ |  ------ |  ------ |
| EXTINT_voidInit(void)  | <a href="#Interrupt-initialization">Initialize Interrupt</a> by Disablle it at first. |`void`|`void`|
| EXTINT_voidEnable(u8)  | Enable PIE for External Interrupt INT0, INT1 or INT2. |`u8 copy_u8InterruptID` - <a href="#Interrupt-Source">Interrupt Source ID</a> |`void`|
| EXTINT_voidMode(u8)  | Select Mode For Interrupt Source. |`u8 copy_u8InterruptID` - <a href="#Interrupt-Source">Interrupt Source ID</a><br/>`u8 copy_u8InterruptMode` - <a href="#Interrupt-Mode">Interrupt Sense (Mode)</a> Control <br/> `void(*copy_funcAddress)(void)` - Fuction That Execution When Happen Interrupt |`void`|
| EXTINT_voidDisable(u8)  | Disable PIE External Interrupt INT0, INT1 or INT2. |`u8 copy_u8InterruptID` - <a href="#Interrupt-Source">Interrupt Source ID</a> |`void`|
| EXTINT_voidGlobalIntEnable(void)  | Enable Global Interrupt. |`void`|`void`|

### Interrupt-Initialization
```c
void EXTINT_voidInit(void)
{
	CLR_BIT(EXTINT_GICR,GICR_INT0);
	CLR_BIT(EXTINT_GICR,GICR_INT1);
	CLR_BIT(EXTINT_GICR,GICR_INT2);
	/*	 clear any existing edge flag	*/
	SET_BIT(EXTINT_GIFR,GIFR_INTF0);
	SET_BIT(EXTINT_GIFR,GIFR_INTF1);
	SET_BIT(EXTINT_GIFR,GIFR_INTF2);
}
```
### Interrupt-Source
| Parameter Name | Description |  Default Pin |
| ------ | ------ |  ------ | 
| EXT_INT0 | For INT0 interrupt | PD2 |
| EXT_INT1 | For INT1 interrupt | PD3 |
| EXT_INT2 | For INT2 interrupt | PB2 |
### Interrupt-Mode
If Enable EXT_INT0 : 
| Parameter Name | Description |   |
| ------ | ------ |  ------ | 
| EXT_INT0_LOW_LEVEL | The low level on the INT0 pin generates an interrupt request. | ![alt text](https://i.ibb.co/bFHNG0S/1.png)   |
| EXT_INT0_FALLING_EDGE | The falling edge on the INT0 pin generates an interrupt request. |![alt text](https://i.ibb.co/bFHNG0S/1.png)   |
| EXT_INT0_RISING_EDGE | The rising edge on the INT0 pin generates an interrupt request. | ![alt text](https://i.ibb.co/BCfkQpW/Rising-Edge.png)  |
| EXT_INT0_LOGICAL_CHANGE | Any logical change on the INT0 pin generates an interrupt request. | ![alt text](https://i.ibb.co/SRB2kmW/Logical-Change.png)  |  

If Enable EXT_INT1 : 
| Parameter Name | Description |   |
| ------ | ------ |  ------ | 
| EXT_INT1_LOW_LEVEL | The low level on the INT1 pin generates an interrupt request. | ![alt text](https://i.ibb.co/bFHNG0S/1.png)   |
| EXT_INT1_FALLING_EDGE | The falling edge on the INT1 pin generates an interrupt request. |![alt text](https://i.ibb.co/bFHNG0S/1.png)   |
| EXT_INT1_RISING_EDGE | The rising edge on the INT1 pin generates an interrupt request. | ![alt text](https://i.ibb.co/BCfkQpW/Rising-Edge.png)  |
| EXT_INT1_LOGICAL_CHANGE | Any logical change on the INT1 pin generates an interrupt request. | ![alt text](https://i.ibb.co/SRB2kmW/Logical-Change.png)  |  

If Enable EXT_INT2 : 
| Parameter Name | Description |   |
| ------ | ------ |  ------ | 
| EXT_INT2_FALLING_EDGE | The falling edge on the INT2 pin generates an interrupt request. |![alt text](https://i.ibb.co/bFHNG0S/1.png)   |
| EXT_INT2_RISING_EDGE | The rising edge on the INT2 pin generates an interrupt request. | ![alt text](https://i.ibb.co/BCfkQpW/Rising-Edge.png)  |

### Full Example  
Switch Connected On PD2 When Push It It Will Make Interrupt Twice At Falling Edge and Rising Edge.  
```c
#define F_CPU 1000000UL	/* Define CPU frequency here xMHz */
/*      INCLUDES      */
#include "BIT_MATH.h" 
#include "STD_TYPES.h"
#include "MAPPING.h"
#include "GPIO_interface.h"
#include "EXT_INT_interface.h"
//#include <avr/io.h>
#include <util/delay.h>
/*  Function Will Execute When Happen Interrupt   */
void X(void);
int main(void)
{
  /*    Init. GPIO Driver   */
  GPIO_voidInit();
  /*    Init. External Interrupts   */
  EXTINT_voidInit();
  /*    Set All Pins In PORTA as Output   */
  GPIO_voidSetPortDirection(PORTA,OUTPUT);
  /*    Set Intial Value By Low   */
  GPIO_voidSetPortValue(PORTA,LOW);
  /*    Set All Pins In PORTD as Input Pullup For INT0 (Optional)   */
  GPIO_voidSetPortDirection(PORTD,INPUT_PULLUP);
  /*    Set INT0 Mode For Interrupt At Any Logical Change   */
  EXTINT_voidMode(EXT_INT0,EXT_INT0_LOGICAL_CHANGE,X);
  /*    Enable Peripheral Flag For INT0  */
  EXTINT_voidEnable(EXT_INT0);
  /*    Enable Global Interrupt Flag    */
  EXTINT_voidGlobalIntEnable();
  while (1)
  {
   GPIO_voidSetPortValue(PORTA,LOW); 
  }
}

void X(void)
{
  /*  Toggle LED  */
  GPIO_voidSetPortValue(PORTA,LOW);
  _delay_ms(1000);
  GPIO_voidSetPortValue(PORTA,HIGH);
  _delay_ms(1000);		
}
```
## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
