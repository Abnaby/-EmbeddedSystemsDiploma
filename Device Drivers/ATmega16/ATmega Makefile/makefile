#	@ Author    : Mohamed Abd El-Naby  							
#	@ version   : V01                 								                                               
#	@ Date      : 23 Sep 2022	  	
#   @brief		: Makefile for compiling, linking and flashing code to microcontroller						  

########################### GLOBAL VARS	###########################################################
#Project Name
PJT_NAME= blinkLED
#Output Format
# hex,elf, and bin
OEXT = hex
#Device Name 
MCU= atmega16
#Header Files Path
INCS= -I .
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

########################## Don't Edit This Section READ ONLY ! ##########################################################
#Hold All C Files
SRC=$(wildcard *.c)
#Just Rename .c -> .o for Obj Dependencies 
OBJs= $(SRC:.c=.o)
#Holde All S Files
ASM	= $(wildcard *.s)
#Just Rename .s -> .o for Obj Dependencies 
ASM_OBJ=$(ASM:.s=.o)	
#Toolchain Name
CC= avr-
#Compile Utility 
COMPLIE = gcc
#OBJ Copy Utility 
OBJCOPY= objcopy
#OBJ Dump Utility 
OBJDUMP = avr-objdump
#Size Utility 
SIZE = size
####################################################################################################

# Start Point 
all:$(PJT_NAME).$(OEXT)
	@echo ""
	@echo "---------------------Build is Done.-------------------------"

############################## Create hex Img #########################################################
$(PJT_NAME).hex: $(PJT_NAME).elf
	@$(CC)$(OBJCOPY) -O ihex $(PJT_NAME).elf $(PJT_NAME).hex

############################# Create .elf Img ##########################################################
$(PJT_NAME).elf:$(OBJs) $(ASM_OBJ)
	@echo "----------------------Start Building Process----------------"
	@echo ""
	@$(CC)$(COMPLIE) -mmcu=$(MCU)  $(CFLAGS) $(OBJs) $(ASM_OBJ) -o $(PJT_NAME).elf
	@$(CC)$(SIZE) $(PJT_NAME).elf

############################# Create Binary ############################################################
$(PJT_NAME).bin: $(PJT_NAME).elf
	@$(CC)$(OBJCOPY) -O binary $< $@
	@echo "Binary File Successfully Generated..."
############################# Create .o File from .c and .s files #######################################
%.o:%.c
	@$(CC)$(COMPLIE)  -mmcu=$(MCU)  $(CFLAGS) -c $(INCS)  $< -o $@
%.o: %.s
	@$(CC)$(COMPLIE) -mmcu=$(MCU)  $(CFLAGS) $(INCS) $< -o $@

############################# List Sections Size	########################################### 
elfSize: $(PJT_NAME).elf
	$(CC)$(SIZE) $(PJT_NAME).elf


############################ Clean #################################################
clean:
	@rm -rf *.o  *.i *.s
	@rm -rf $(PJT_NAME).bin
	@rm -rf $(PJT_NAME).elf
	@rm -rf $(PJT_NAME).hex
	@rm -rf *.map

	@echo "<-------------------Done---------------->"
