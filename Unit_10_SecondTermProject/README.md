# **ECU3 Exit Gate**
## *Description*
This Project aims to make a design for a private parking garage area for people in a specific area or garage for a company.
This system is split into three ECUs:
 > [First ECU for the entrance gate](/ECU1/) 

    This ECU is responsible for the gate that is based on the servo motor, the RFID reader based on UART for the user interface, Buzzer for the beep sound when the driver enters an unauthorized ID, and Some LEDs like green and red for authorized and unauthorized ID.
    LCD will display some messages for the driver to determine what will do.

> [Second ECU for admin dashboard ](/ECU2/) 

    This ECU is responsible for the admin privileges to add, delete, and edit driver data. the system may have more than one admin each one of them has its username and password. 
    The ECU has an LCD and keypad as an admin interface, a UART device for entering admin data, and a seven-segment to display the number of available slots in the garage.

> [Third ECU for the exit gate ](/ECU3/) 

    This ECU is responsible for the gate that is based on the servo motor, the RFID reader based on UART for the user interface, Buzzer for the beep sound when the driver enters an unauthorized ID, and Some LEDs like green and red for authorized and unauthorized ID.
    LCD will display some messages for the driver to determine what will do.

The Whole system is connected together when a driver enters a valid ID the ECU1 sends data through SPI to ECU2, and the ECU2 starts checking if the ID is valid or not and checking if it is inside the garage and wants to exit from the entrance gate then the ECU2 return the result of checking to ECU1 to display the result of computing on the LCD is valid ID or invalid ID.
When the driver wants to exit the garage space and enter the ID the ECU3 sends the driver data to ECU2, and the ECU2 starts checking if the ID is valid or not and checking if it is outside the garage and wants to enter from the exit gate then the ECU2 return the result of checking to ECU1 to display the result of computing on the LCD is valid ID or invalid ID.

## *System Diagrams* 
 [HTML page for system diagrams ](/System%20Diagrams/doc.html) 
 

## *Documentations* 
- [Doxygen]([Doxygen]()) ![image](https://progress-bar.dev/0/)
- [Word File]([Word_File]()) ![image](https://progress-bar.dev/0/)


## *Simulation Design* 
 ![System Design ](https://drive.google.com/uc?export=download&id=1j_PZ72jvhawWOxwV914IH_VAXoQZM_k5) 
 
![SimulationDesign](https://drive.google.com/uc?export=download&id=1FAMmp33Dq8oArrLlqkcdsdRqNVTlWEXP)



## Requirement Diagram
![RequirementDiagram](https://drive.google.com/uc?export=download&id=12t4j4HahuhJd27lik5dbc7H875zRNw_T)

## Sequance Diagram
![SequanceDiagram](https://drive.google.com/uc?export=download&id=1xhucH4LorB8i_Pav6T9dfesSjEZY5ERV)


## *Sprints Details* 
- [PPG Sprint1]([Sprint1_Details](../SprintsDetails/Sprint_1/README.md)) ![image](https://progress-bar.dev/100/)
- [PPG Sprint2]([Sprint2_Details](../SprintsDetails/Sprint_2/README.md)) ![image](https://progress-bar.dev/100/)
- [PPG Sprint3]([Sprint3_Details](../SprintsDetails/Sprint_3/README.md)) ![image](https://progress-bar.dev/100/)
- [PPG Sprint4]([Sprint4_Details](../SprintsDetails/Sprint_4/README.md)) ![image](https://progress-bar.dev/100/)
- [PPG Sprint5]([Sprint5_Details](../SprintsDetails/Sprint_5/README.md)) ![image](https://progress-bar.dev/100/)
- [PPG Sprint6]([Sprint6_Details](../SprintsDetails/Sprint_6/README.md)) ![image](https://progress-bar.dev/100/)
- [PPG Sprint7]([Sprint7_Details](../SprintsDetails/Sprint_7/README.md)) ![image](https://progress-bar.dev/100/)



## *ECU3 Testing*
- [ECU1 Testing]([ECU1_Testing](ECU1/TestCases/ECU1_EntranceGate_TestCases.xlsx))  ![image](https://progress-bar.dev/100/)
- [ECU2 Testing]([ECU2_Testing](/ECU2/TestCases/ECU2_AdminDashboard.xlsx)) ![image](https://progress-bar.dev/100/)
- [ECU3 Testing]([ECU3_Testing](TestCases/ECU3_ExitGate_TestCases.xlsx)) ![image](https://progress-bar.dev/100/)


## *Contributing*  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.


