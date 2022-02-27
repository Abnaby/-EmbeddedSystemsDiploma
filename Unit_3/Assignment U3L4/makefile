#	@ Author    : Mohamed Abd El-Naby  							
#	@ version   : V02                 								                                               
#	@ Date      : 23 Feb 2022	  								  

########################### GLOBAL VARS	###########################################################
#Toolchain Name
CC=arm-none-eabi-
#Toolchain Attributes section
CFLAGS= -c 
#Target CPU Name
TRGT=-mcpu=cortex-m4
DBG = -g -gdwarf-2
#Header Files Path
INCS= -I .
#External Libraries for Linker
LIBS= 
# Genrate Map File
MAP_FILE= -Map=Map_file.map
#Hold All C Files
SRC=$(wildcard *.c)
#Just Rename .c -> .o for Obj Dependencies 
OBJs= $(SRC:.c=.o)
#Holde All S Files
ASM	= $(wildcard *.s)
#Just Rename .s -> .o for Obj Dependencies 
ASM_OBJ=$(ASM:.s=.o)	
#Project Name
PJT_NAME= blinkLED
####################################################################################################

all:$(PJT_NAME).bin
	@echo ""
	@echo "---------------------Build is Done.-------------------------"
#--------------------------------------Linking Statge------------------------------------#
$(PJT_NAME).elf:$(OBJs) $(ASM_OBJ)
	@echo "----------------------Start Building Process----------------"
	@echo ""
	@$(CC)ld.exe -T linkerScript.ld $(LIBS) $(OBJs) $(ASM_OBJ) -o $@ $(MAP_FILE)
	@cp $(PJT_NAME).elf $(PJT_NAME).axf
	@echo "Linking Statge Successfully Generated ELF Img and AXF Img for Target" $(TRGT)"."


#--------------------------------------Binary File---------------------------------------#
$(PJT_NAME).bin: $(PJT_NAME).elf
	@$(CC)objcopy.exe -O binary $< $@
	@echo "Binary File Successfully Generated..."
#--------------------------------------Assambling Statge---------------------------------#
%.o:%.c
	@$(CC)gcc.exe $(CFLAGS) $(TRGT) $(DBG) $(INCS) $< -o $@
%.o: %.s
	@$(CC)as.exe  $(CFLAGS) $(TRGT) $(DBG) $< -o $@
#--------------------------------------Simulation Statge---------------------------------#
run_binFile: $(PJT_NAME).bin
	@echo "------RUN------"
	@qemu-system-arm -M versatilepb -m 128M -nographic -kernel $<
#--------------------------------------Run Statge----------------------------------------#
run: clean all run_binFile

#--------------------------------------Dump ELF IMG--------------------------------------#
dump_elf: 
	@arm-none-eabi-objdump.exe -h *.elf

#--------------------------------------Clean Statge--------------------------------------#
clean:
	@echo "Cleaning Your Build Directory(.o,.elf,.bin,.map files)."
	@rm -rf *.o *.elf *.bin  *.map
clean_elf:
	@echo "Cleaning Your Build Directory(.elf files)."
	@rm -rf *.elf 