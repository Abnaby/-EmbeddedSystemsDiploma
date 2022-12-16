################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Inc/MCAL/UART/subdir.mk
-include Inc/MCAL/SPI/subdir.mk
-include Inc/MCAL/RCC/subdir.mk
-include Inc/MCAL/NVIC/subdir.mk
-include Inc/MCAL/I2C/subdir.mk
-include Inc/MCAL/GPIO/subdir.mk
-include Inc/MCAL/EXTI/subdir.mk
-include Inc/MCAL/AFIO/subdir.mk
-include Inc/HAL/_7Segment/subdir.mk
-include Inc/HAL/LCD/subdir.mk
-include Inc/HAL/KeyPad/subdir.mk
-include Inc/HAL/Buzzer/subdir.mk
-include Inc/APP/subdir.mk
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
ECU2_Dashboard.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
ECU2_Dashboard.list \

OBJCOPY_HEX += \
ECU2_Dashboard.hex \

OBJCOPY_BIN += \
ECU2_Dashboard.bin \


# All Target
all: ECU2_Dashboard.elf secondary-outputs

# Tool invocations
ECU2_Dashboard.elf: $(OBJS) $(USER_OBJS) C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\ECU2_Dashboard\STM32F103C6TX_FLASH.ld
	arm-none-eabi-gcc -o "ECU2_Dashboard.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\ECU2_Dashboard\STM32F103C6TX_FLASH.ld" --specs=nosys.specs -Wl,-Map="ECU2_Dashboard.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

ECU2_Dashboard.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "ECU2_Dashboard.list"
	@echo 'Finished building: $@'
	@echo ' '

ECU2_Dashboard.hex: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "ECU2_Dashboard.hex"
	@echo 'Finished building: $@'
	@echo ' '

ECU2_Dashboard.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "ECU2_Dashboard.bin"
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
