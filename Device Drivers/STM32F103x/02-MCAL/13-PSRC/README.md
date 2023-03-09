# Processor Special Register Control (PSRC)

 
## Development :  
In V1 will has this function :  
| Function Name | Usage |  Parameter | return | Note |
| --- | --- |  ----- |  ----- |  ----------------- |
|PSRC_voidSetAccessLevel(PSRC_AccessLevel_t , u8)|This function is used to switch from privileged access level to unprivileged access level or vice versa.|`PSRC_AccessLevel_t copy_AccessLevel` select the access level form <a href="#SPRC-ACCESS-LEVEL">PSRC_AccessLevel_t</a>. <br/> `u8 copy_u8HandleExceptions` it will handle the wrong conversion between unprivileged access level to privileged access level |`PSRC_Return_t` one of <a href="#SPRC-Return ">PSRC_Return_t</a>|in case of current mode is privileged access so we can change the access level at any time to an unprivileged access level in case of current mode is unprivileged access so we can change the access level only in handler mode(in IRQ).but if tried to switch access level it will make a hard-fault exception.|

## SPRC-ACCESS-LEVEL 
| Param Name | Description |  
| ------ | ------ | 
| PSRC_PRIVILEGED_ACCESS | Privileged Acess Level is selected |
| PSRC_UNPRIVILEGED_ACCESS | Unprivileged Acess Level is selected |

## SPRC-Return 
| Param Name | Description |  
| ------ | ------ | 
| PSRC_UNSUCCESSFUL_OPER | Return value for unsuccessful operation |
| PSRC_SUCCESSFUL_OPER | Return value for successful operation |

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
