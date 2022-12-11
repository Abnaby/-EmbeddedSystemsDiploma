# **ECU1 Entrance Gate**

## *Story*
> The main goal of ECU1 is to control the entrance gate by reading the ID of the Driver using an RFID card based on UART and sending the driver data username and password to the admin dashboard ECU2 through SPI when ECU2 Responds with a valid ID then ECU1 starts to open the entrance gate using Fast PWM Mode. While the PIR sensor reads there is a vehicle under the entrance gate, the entrance gate will never close until the vehicle exits the area under the entrance gate and the PIR sensor read LOW. when the entrance gate is open the RFID reader can't read any data until the gate is closed.

  In case of an invalid ID, the entrance gate never opens until the driver enters a valid ID.

## *Architecture Diagram* 
![ArchitectureDiagram](https://drive.google.com/uc?export=download&id=1_yUNCz1EuYMqdYS2o0_mYbWBEaDkU_Cs)

## Requirement Diagram
![RequirementDiagram](https://drive.google.com/uc?export=download&id=18pBeMvcHDMsqCRf_EHMnR9AfCK5Igx7x)

## Entrance Activity Diagram
![EntranceActivityDiagram](https://drive.google.com/uc?export=download&id=1m5zAg_2bR6GW9svL-wNyrdG9GR7gey1L)

## *Sprints Details* 
- [PPG Sprint1]([Sprint1_Details](../SprintsDetails/Sprint_1/README.md) ![image](https://progress-bar.dev/100/)
- [PPG Sprint2]([Sprint2_Details](../SprintsDetails/Sprint_2/README.md) ![image](https://progress-bar.dev/90/)

## *ECU1 Testing*
- [ECU1 Testing]([ECU1_Testing](TestCases/ECU1_EntranceGate_TestCases.xlsx) ![image](https://progress-bar.dev/100/)
- ![ECU1_Testing](https://drive.google.com/uc?export=download&id=1Ar1Y1FHA9CGF-0bMQ0DO4HYrvIZDTyBd)
- ![ECU1_Testing](https://drive.google.com/uc?export=download&id=15iT8e1plO0X85FQ01-La8TnRQjntQxpw)
- ![ECU1_Testing](https://drive.google.com/uc?export=download&id=1ttzKzUVoPPNGaZJzs9XFLOaubtnEwyni)

## *Contributing*  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.


