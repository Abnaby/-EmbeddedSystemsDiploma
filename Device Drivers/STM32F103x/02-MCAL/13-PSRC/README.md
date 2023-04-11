# Processor Special Register Control (PSRC)
 
## Development :  
In V2 will has this function :  
| Function Name | Usage |  Parameter | return | Note | FCN type |
| --- | --- |  ----- |  ----- |  ----------------- |------------|
|PSRC_voidSetAccessLevel(PSRC_AccessLevel_t )|This function is used to switch from privileged access level to unprivileged access level or vice versa.|`PSRC_AccessLevel_t copy_AccessLevel` select the access level form <a href="##SPRC-ACCESS-LEVEL">PSRC_AccessLevel_t</a>. |`void` |Naked Function Just Push/Pop LR. <br/> Need Privileged Access Level.| Naked |
|PSRC_voidSetUsageStackPointer(PSRC_StackPointer_t)|This function is used to switch from MSP to PSP and vice versa.|`PSRC_StackPointer_t copy_StackPointer` select the usage pointer form <a href="##PSRC-StackPointer">PSRC_StackPointer_t</a>.|`void` |Need to Privileged access level <br/> is aliased to `PSRC_voidSetWorkingStack_MSP()` and `PSRC_voidSetWorkingStack_PSP()`Functions | Inline |
|PSRC_voidSetWorkingStack_MSP(void )|This function is used to switch to use main stack.|`void` |`void` | Need Privileged Access Level in thread mode.| Inline |
|PSRC_voidSetWorkingStack_PSP(void )|This function is used to switch to use process stack.|`void` |`void` | Need Privileged Access Level in thread mode.| Inline |
|PSRC_voidSetPSP(u32)|This function is used to set the top of process stack pointer.|`u32 copy_u32topOfPSP` the address of the top of working process stack |`void` | Need Privileged Access Level| Inline |
|PSRC_voidGetPSP(void)|This function is used to get the current top of process stack pointer.|`void` |`u32` Current  Process Stack Pointer address | Need Privileged Access Level| Inline |
|PSRC_voidSetMSB(u32)|This function is used to set the top of main stack pointer.|`u32 copy_u32topOfPSP` the address of the top of working process stack |`void` | Need Privileged Access Level| Inline |
|PSRC_voidGetMSB(void)|This function is used to get the current top of main stack pointer.|`void` |`u32` Current  Main Stack Pointer address | Need Privileged Access Level| Inline |

## SPRC-ACCESS-LEVEL 
| Param Name | Description |  
| ------ | ------ | 
| PSRC_PRIVILEGED_ACCESS | Privileged Access Level is selected |
| PSRC_UNPRIVILEGED_ACCESS | Unprivileged Access Level is selected |

## PSRC-StackPointer 
| Param Name | Description |  
| ------ | ------ | 
| _MSP | For Main Stack Pointer |
| _PSP | For Process Stack Pointer |


## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
