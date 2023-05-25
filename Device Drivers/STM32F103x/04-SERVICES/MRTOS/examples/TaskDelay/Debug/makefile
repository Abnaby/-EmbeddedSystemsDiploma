################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include MRTOS/src/subdir.mk
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
RTOS.axf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
RTOS.list \

OBJCOPY_HEX += \
RTOS.hex \

OBJCOPY_BIN += \
RTOS.bin \


# All Target
all: RTOS.axf secondary-outputs

# Tool invocations
RTOS.axf: $(OBJS) $(USER_OBJS) C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\RTOS\STM32F103C6TX_FLASH.ld
	arm-none-eabi-gcc -o "RTOS.axf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\RTOS\STM32F103C6TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="RTOS.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

RTOS.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "RTOS.list"
	@echo 'Finished building: $@'
	@echo ' '

RTOS.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "RTOS.hex"
	@echo 'Finished building: $@'
	@echo ' '

RTOS.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "RTOS.bin"
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
