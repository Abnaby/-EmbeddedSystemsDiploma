# Processor Special Register Control (PSRC)

 
## Development :  
In V0.2 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| --- | --- |  ----- |  ----- |  ----------------- |
|PSRC_voidSetAccessLevel(PSRC_AccessLevel_t , u8)|This function is used to switch from privileged access level to unprivileged access level or vice versa.|`PSRC_AccessLevel_t copy_AccessLevel` select the access level form <a href="##SPRC-ACCESS-LEVEL">PSRC_AccessLevel_t</a>. <br/> `u8 copy_u8HandleExceptions` it will handle the wrong conversion between unprivileged access level to privileged access level |`PSRC_Return_t` one of <a href="##SPRC-Return ">PSRC_Return_t</a>|in case of current mode is privileged access so we can change the access level at any time to an unprivileged access level in case of current mode is unprivileged access so we can change the access level only in handler mode(in IRQ).but if tried to switch access level it will make a hard-fault exception.|
|PSRC_voidSetUsageStackPointer(PSRC_StackPointer_t, u8)|This function is used to switch from MSP to PSP and vice versa.|`PSRC_StackPointer_t copy_StackPointer` select the usage pointer form <a href="##PSRC-StackPointer">PSRC_StackPointer_t</a>. <br/> `u8 copy_u8HandleExceptions` Not Supported Yet - Has no effect|`PSRC_Return_t` Always return PSRC_SUCCESSFUL_OPER even if operation not happen|Need to Privileged access level to change the stack pointer.|

## SPRC-ACCESS-LEVEL 
| Param Name | Description |  
| ------ | ------ | 
| PSRC_PRIVILEGED_ACCESS | Privileged Access Level is selected |
| PSRC_UNPRIVILEGED_ACCESS | Unprivileged Access Level is selected |

## PSRC-StackPointer 
| Param Name | Description |  
| ------ | ------ | 
| PSRC_MSP | For Main Stack Pointer |
| PSRC_PSP | For Process Stack Pointer |
## SPRC-Return 
| Param Name | Description |  
| ------ | ------ | 
| PSRC_UNSUCCESSFUL_OPER | Return value for unsuccessful operation |
| PSRC_SUCCESSFUL_OPER | Return value for successful operation |



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
