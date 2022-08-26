# GPIO Driver
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
- Enabling the `alternate function` of some of the port pins does not affect the use of the other pins in the port as general digital I/O.  
## V1 Features : 
 Can Control I/O Controller Pins As :     
&nbsp; 1 - Set Direction Of Pin  I/O.  
&nbsp; 2 - Set Output Value Of Pin even High or Low.  
&nbsp; 3 - Read Value Of PIN If it Input.  
&nbsp; 4 - Toggle PIN in Specific Port.  
&nbsp; 5 - Set Output Value Of All PINS in Port even High or Low.    
&nbsp; 6 - Set Direction Of All PINS in Port.    
 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return |
| ------ | ------ |  ------ |  ------ |
| GPIO_voidInit(void)  | <a href="#GPIO-initialization">Initialize GPIO</a> by Make All Ports Input Pullup. |`void`|`void`|
| GPIO_voidSetPinDirection(u8, u8, u8)  | Set Direction of Pin even Input or Output. |`u8 copy_u8PortId` - <a href="#Port-Id">Port ID </a>Selection <br/>`u8 copy_u8PinNumber` - <a href="#Pin-Number">Pin Number </a>Selection<br/>`u8 copy_u8PinDirection` - <a href="#Pin-Direction">Pin Direction</a>|`void`|
| GPIO_voidSetPinValue(u8, u8, u8)  | Set Value Of Pin. |`u8 copy_u8PortId` - <a href="#Port-Id">Port ID </a>Selection <br/>`u8 copy_u8PinNumber` - <a href="#Pin-Number">Pin Number </a>Selection<br/>`u8 copy_u8Value` - <a href="#Pin-Value">Pin Value</a> If Output|`void`|
| GPIO_u8GetPinValue(u8, u8);  | Get Value Of Pin If Input. | `u8 copy_u8PortId` - <a href="#Port-Id">Port ID </a>Selection <br/>`u8 copy_u8PinNumber` - <a href="#Pin-Number">Pin Number </a>Selection<br/>`u8 copy_u8Value` - <a href="#Pin-Value">Pin Value</a> |`u8` - represent value in pin.|
| EXTINT_voidGlobalIntEnable(void)  | Enable Global Interrupt. |`void`|`void`|
| GPIO_voidSetPortDirection(u8, u8)  | Set Direction of All Pins In Port. |`u8 copy_u8PortId` - <a href="#Port-Id">Port ID </a>Selection <br/>`u8 copy_u8PortDirection` - <a href="#Pin-Direction">Port Direction</a>|`void`|
| GPIO_voidSetPortValue(u8,u8)  | Set Value of All Pins In Port. |`u8 copy_u8PortId` - <a href="#Port-Id">Port ID </a>Selection <br/>`u8 copy_u8PortDirection` - <a href="#Pin-Direction">Port Direction</a>|`void`|
| GPIO_voidTogglePin(u8, u8);  | Toggle PIN in Specific Port. | `u8 copy_u8PortId` - <a href="#Port-Id">Port ID </a>Selection <br/>`u8 copy_u8PinNumber` - <a href="#Pin-Number">Pin Number </a>Selection|`u8` - represent value in pin.|


### GPIO-Initialization
```c
void GPIO_voidInit(void)
{
	GPIO_PORTA = CLR ;
	GPIO_DDRA = CLR ;
	GPIO_PINA = CLR ;
	GPIO_PORTB = CLR ;
	GPIO_DDRB = CLR ;
	GPIO_PINB= CLR ;
	GPIO_PORTC = CLR ;
	GPIO_DDRC= CLR ;
	GPIO_PINC = CLR ;
	GPIO_PORTD = CLR ;
	GPIO_DDRD = CLR ;
	GPIO_PIND = CLR ;
}
```
### Port-Id
| Parameter Name | Description |
| ------ | ------ |
| PORTA | For Port A |
| PORTB | For Port B |
| PORTC | For Port C |
| PORTD | For Port D |
### Pin-Number
| Parameter Name | Description |
| ------ | ------ |
| PIN0 | For Pin 0 |
| PIN1 | For Pin 1 |
| PIN2 | For Pin 2 |
| PIN3 | For Pin 3 |
| PIN4 | For Pin 4 |
| PIN5 | For Pin 5 |
| PIN6 | For Pin 6 |
| PIN7 | For Pin 7 |
### Pin-Direction
| Parameter Name | Description |
| ------ | ------ |
| INPUT_FLOAT | For Input Floating |
| INPUT_PULLUP | For Input Pullup Resistor |
| OUTPUT | For Output |
### Pin-Value
| Parameter Name | Description |
| ------ | ------ |
| HIGH | For 5V |
| LOW | For 0V |
### Full Example  
Switch Connected On PD2 When Push It It Will Make Toggle in PortA.  
```c
EXAMPLE
```
## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
