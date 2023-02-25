# ARM-V7 LAB 1 
## Explanation
    After reset, we worked on thread mode with privileged access level using the main stack.
![image](https://drive.google.com/uc?export=download&id=1PqO4YagiWD5RkNI9MNBTfgS-sNqHmzOn)

    After that EXTI0 interrupt is fired.  
    EXTI0 @ number 6 in vector table (so it is an interrupt number = 7) 
    by applying offset due to software interrupts (7+15), ISR Will be 22.  
    All interrupts worked in handler mode with privileged access level using the main stack.
![image](https://drive.google.com/uc?export=download&id=1mqkPr1LdGbZmP4j_TV05u1nKWGew0nC9)

    When Interrupt fired stacking happens in the main stack so the return address of interrupt(LR Value) will be 0xFFFFFFF9   
![image](https://drive.google.com/uc?export=download&id=1re3s-3tMvXuXVDP4yOlMWW_Ct9m2dlw4) 

    So, we follow this path.  
![image](https://drive.google.com/uc?export=download&id=1rYeUVtL1pAT_HMhsmcYTA_69nMlAssBi)  

    The Whole Image. 
![image](https://drive.google.com/uc?export=download&id=1BgzQZ6dfeyAA2AZo1_BIFxfuHNVVef4F)

## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.
