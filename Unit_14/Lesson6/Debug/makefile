################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
lab1_GPIO_OUTPUT.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
lab1_GPIO_OUTPUT.list \

OBJCOPY_HEX += \
lab1_GPIO_OUTPUT.hex \

OBJCOPY_BIN += \
lab1_GPIO_OUTPUT.bin \


# All Target
all: lab1_GPIO_OUTPUT.elf secondary-outputs

# Tool invocations
lab1_GPIO_OUTPUT.elf: $(OBJS) $(USER_OBJS) C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\lab1_GPIO_OUTPUT\STM32F103C6TX_FLASH.ld
	arm-none-eabi-gcc -o "lab1_GPIO_OUTPUT.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\lab1_GPIO_OUTPUT\STM32F103C6TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="lab1_GPIO_OUTPUT.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	arm-none-eabi-gcc -o "lab1_GPIO_OUTPUT.axf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\lab1_GPIO_OUTPUT\STM32F103C6TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="lab1_GPIO_OUTPUT.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	arm-none-eabi-objdump -D lab1_GPIO_OUTPUT.elf > lab1_GPIO_OUTPUT.s
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

lab1_GPIO_OUTPUT.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "lab1_GPIO_OUTPUT.list"
	@echo 'Finished building: $@'
	@echo ' '

lab1_GPIO_OUTPUT.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "lab1_GPIO_OUTPUT.hex"
	@echo 'Finished building: $@'
	@echo ' '

lab1_GPIO_OUTPUT.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "lab1_GPIO_OUTPUT.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
