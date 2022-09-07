
### Customize your project 
```makefile
#Add Your Project Name
PJT_NAME= blinkLED
#determine Output Format
# hex,elf, and bin
OEXT = hex
#add your Device Name 
MCU= atmega16

#External Libraries for Linker
LIBS= 
# Optimization Level  Optimization level, can be [0, 1, 2, 3, s]. 0 turns off optimization.
OPTIMIZE= 3

#Toolchain Attributes section (Be Careful when add parm,seprate with any delimiter use space only)
#  -g:        generate debugging information (for GDB, or for COFF conversion)
#  -Wall...:  warning level
#  -Wa,...:   tell GCC to pass this to the assembler.
#  -ahlms:  create assembler listing
#  -Map,output.map
#   
CFLAGS=  -Wl,-Map,output.map -O$(OPTIMIZE)

```


### Available Targets In V1
| Target Name | Description |
|------------|--------------|
| all | Generate final hex,elf,bin files from .c files |  
| elfSize | generate each section size in elf image |  
| clean | remove all build and executable files |  

### All Target 
```makefile
# Start Point 
all:$(PJT_NAME).$(OEXT)
	@echo ""
	@echo "---------------------Build is Done.-------------------------"
```

### elfSize Target
```makefile
# Start Point 
elfSize: $(PJT_NAME).elf
	$(CC)$(SIZE) $(PJT_NAME).elf
```

### clean Target
```makefile
	@rm -rf *.o  *.i *.s
	@rm -rf $(PJT_NAME).bin
	@rm -rf $(PJT_NAME).elf
	@rm -rf $(PJT_NAME).hex
	@rm -rf *.map

	@echo "<-------------------Done---------------->"
```
### Building process in avr-gcc
![image](https://drive.google.com/uc?export=download&id=1SrqKyEZRX53iNQyh3AEJsQZg7MaIxfol)
> Terminal
![image](https://drive.google.com/uc?export=download&id=1vZad7oOUDmU_e1Kth4RsxoguS1fMwns7)

### Output
![image](https://drive.google.com/uc?export=download&id=1orapZulthPhAooXjBeJCXlr0UkqFgcIR)



## Contributing  
Bug reports, feature requests, and so on are always welcome. Feel free to leave a note in the Issues section.

