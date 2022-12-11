# **ECU3 Exit Gate**
## *Story*
> The main goal of ECU3 is to control the exit gate by reading the ID of the Driver using an RFID card based on UART and sending the driver data ID to the admin dashboard ECU2 through SPI when ECU2 Responds with a valid ID then ECU3 starts to open the exit gate using Fast PWM Mode. While the PIR sensor reads there is a vehicle under the exit gate, the exit gate will never close until the vehicle exits the area under the exit gate and the PIR sensor read LOW. when the exit gate is open the RFID reader can't read any data until the gate is closed.
In case of an invalid ID, the exit gate never opens until the driver enters a valid ID.

## *Architecture Diagram* 
![ArchitectureDiagram](https://drive.google.com/uc?export=download&id=1_yUNCz1EuYMqdYS2o0_mYbWBEaDkU_Cs)

## Requirement Diagram
![RequirementDiagram](https://drive.google.com/uc?export=download&id=1hza4eWPoP2PW-Nr9ibhvcYkpi3PeI3yf)

## Entrance Activity Diagram
![ActivityDiagram](https://drive.google.com/uc?export=download&id=1m5zAg_2bR6GW9svL-wNyrdG9GR7gey1L)


## *Sprints Details* 
- [PPG Sprint2]([Sprint2_Details](../SprintsDetails/Sprint_2/README.md) ![image](https://progress-bar.dev/100/)

## *ECU3 Testing*
- [ECU3 Testing]([ECU3_Testing](TestCases/ECU3_ExitGate_TestCases.xlsx) ![image](https://progress-bar.dev/100/)
- ![ECU3_Testing](https://drive.google.com/uc?export=download&id=1Ar1Y1FHA9CGF-0bMQ0DO4HYrvIZDTyBd)
- ![ECU3_Testing](https://drive.google.com/uc?export=download&id=15iT8e1plO0X85FQ01-La8TnRQjntQxpw)
- ![ECU3_Testing](https://drive.google.com/uc?export=download&id=1ttzKzUVoPPNGaZJzs9XFLOaubtnEwyni)

## *Contributing*  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.


