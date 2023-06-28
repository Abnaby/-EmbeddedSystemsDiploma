## CAN Controller    -  Case Study Four / CANoe with Nodes Based on CAPL script


### **Idea**
On the bus exist two nodes based on the CAPL script.  
Node 1 is responsible for Pedal Accelerator it has two commands   
`CMD_ACCELERATE` to increase speed gradually and `CMD_DECELERATE `to decrease speed gradually. 
then send the command to ECU2

Node 2 is responsible for changing vehicle speed based on a received command from ECU1 and after changing speed, it sends the new speed to ECU1 

![image](./Simulation%20Files/1.JPG);

### **UI Panel**
Exist Switch to send `CMD_ACCELERATE` if it is on and send `CMD_DECELERATE` if it is off.  
and exist also a speedometer to display the current vehicle speed.

![image](./Simulation%20Files/UI_Panel.JPG);

## Working SW 
 ![image](./Simulation%20Files/CAN.gif)



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

