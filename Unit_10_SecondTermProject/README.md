# **Private Parking Garage**
## *Description*
This Project aims to make a design for a private parking garage area for people in a specific area or garage for a company.
This system is split into three ECUs:
 > [First ECU for the entrance gate](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/ECU1) 

> This ECU is responsible for the gate that is based on the servo motor, the RFID reader based on UART for the user interface, Buzzer for the beep sound when the driver enters an unauthorized ID, and Some LEDs like green and red for authorized and unauthorized ID.
LCD will display some messages for the driver to determine what will do.

> [Second ECU for admin dashboard ](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/ECU2) 

>This ECU is responsible for the admin privileges to add, delete, and edit driver data. the system may have more than one admin each one of them has its username and password. 
The ECU has an LCD and keypad as an admin interface, a UART device for entering admin data, and a seven-segment to display the number of available slots in the garage.

> [Third ECU for the exit gate ](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/ECU3) 

>This ECU is responsible for the gate that is based on the servo motor, the RFID reader based on UART for the user interface, Buzzer for the beep sound when the driver enters an unauthorized ID, and Some LEDs like green and red for authorized and unauthorized ID.
LCD will display some messages for the driver to determine what will do.

The Whole system is connected together when a driver enters a valid ID the ECU1 sends data through SPI to ECU2, and the ECU2 starts checking if the ID is valid or not and checking if it is inside the garage and wants to exit from the entrance gate then the ECU2 return the result of checking to ECU1 to display the result of computing on the LCD is valid ID or invalid ID.
When the driver wants to exit the garage space and enter the ID the ECU3 sends the driver data to ECU2, and the ECU2 starts checking if the ID is valid or not and checking if it is outside the garage and wants to enter from the exit gate then the ECU2 return the result of checking to ECU1 to display the result of computing on the LCD is valid ID or invalid ID.

## *Project Overview* 
 ![ProjectOverview](https://drive.google.com/uc?export=download&id=19YwZc3M16f4vLemHgEzKwErMsVJz_CFh) 
 - ECU1 Calls

  ![ECU1 Calls]( https://drive.google.com/uc?export=download&id=1WMzGYZMEJb30pcN8q_XpnvaNUUKMUHOB) 

  - ECU2 Calls

    ![ECU2 CALLS](https://drive.google.com/uc?export=download&id=1q_qkUGXkS0rCOSJLBIxbIuL0c0AMwQlj)
    
 - ECU3 Calls

     ![ECU2 CALLS](https://drive.google.com/uc?export=download&id=1s53giUzwLCDT81wgGZgFoqPMbuF4L6kL)

## *System Diagrams* 
 [HTML page for system diagrams ](https://github.com/Abnaby/EmbeddedSystemsDiploma/blob/main/Unit_10_SecondTermProject/System%20Diagrams/doc.html) 
 

## *Documentations* 
- [Doxygen](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/Documentations/Doxgyen) ![image](https://progress-bar.dev/100/)

- [PDF](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/Documentations/PDF) ![image](https://progress-bar.dev/100/)


 ## *Simulation Design* 
![SimulationDesign](https://drive.google.com/uc?export=download&id=1FAMmp33Dq8oArrLlqkcdsdRqNVTlWEXP)


## *System Partitioning* 
 ![System Design ](https://drive.google.com/uc?export=download&id=1j_PZ72jvhawWOxwV914IH_VAXoQZM_k5) 

## Requirement Diagram
![RequirementDiagram](https://drive.google.com/uc?export=download&id=12t4j4HahuhJd27lik5dbc7H875zRNw_T)

## Sequance Diagram
 - ECU1 Simplified UML
   ![SequanceDiagram](https://drive.google.com/uc?export=download&id=1_DSOFTHKYi_RzpVg1BZUeSVKk1EWuJ1T) 

 - ECU2 Simplified UML
   
   ![SequanceDiagram](https://drive.google.com/uc?export=download&id=1Oaol9UfESK9_CJoJVRfzGUjLhNER3kck)  

 - ECU3 Simplified UML
    
    ![SequanceDiagram](https://drive.google.com/uc?export=download&id=1oopwEmx-GwoPcXKGPp8wjcuOpqUfg80E)  

- System Sequence Diagram 
    
    ![SequanceDiagram](https://drive.google.com/uc?export=download&id=1xhucH4LorB8i_Pav6T9dfesSjEZY5ERV)  


## *Sprints Details* 
[PPG Sprint1](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_1) ![image](https://progress-bar.dev/100/)

[PPG Sprint2](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_2) ![image](https://progress-bar.dev/100/)

[PPG Sprint3](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_3) ![image](https://progress-bar.dev/100/)

[PPG Sprint4](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_4) ![image](https://progress-bar.dev/100/)

[PPG Sprint5](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_5) ![image](https://progress-bar.dev/100/)

[PPG Sprint6](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_6) ![image](https://progress-bar.dev/100/)

[PPG Sprint7](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_7) ![image](https://progress-bar.dev/100/)

[PPG Sprint7](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_7) ![image](https://progress-bar.dev/100/)

[PPG Sprint8](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/SprintsDetails/Sprint_8) ![image](https://progress-bar.dev/100/)

## *ECU3 Testing*
[ECU1 Testing](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/ECU1/TestCases) ![image](https://progress-bar.dev/100/)

[ECU2 Testing](https://github.com/Abnaby/EmbeddedSystemsDiploma/tree/main/Unit_10_SecondTermProject/ECU2/TestCases) ![image](https://progress-bar.dev/100/)

[ECU3 Testing](https://github.com/Abnaby/EmbeddedSystemsDiploma/blob/main/Unit_10_SecondTermProject/ECU3/TestCases/ECU3_ExitGate_TestCases.xlsx) ![image](https://progress-bar.dev/100/)

## **Demo**

[![Watch the video](https://drive.google.com/uc?export=download&id=1eCF_gKzckSzueEvqEV9ns8dZomcR8Zj5)](https://youtu.be/0oEr_Qcj3Wc)


## *Contributing*  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.


