################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include freeRTOS/portable/MemMang/subdir.mk
-include freeRTOS/portable/GCC/ARM_CM3/subdir.mk
-include freeRTOS/subdir.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include STM32F103_DRIVER/02-MCAL/10-USART/subdir.mk
-include STM32F103_DRIVER/02-MCAL/02-GPIO/subdir.mk
-include STM32F103_DRIVER/02-MCAL/01-RCC/subdir.mk
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
freeRTOS.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
freeRTOS.list \

OBJCOPY_BIN += \
freeRTOS.bin \


# All Target
all: freeRTOS.elf secondary-outputs

# Tool invocations
freeRTOS.elf: $(OBJS) $(USER_OBJS) C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\freeRTOS\STM32F103T6UX_FLASH.ld
	arm-none-eabi-gcc -o "freeRTOS.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\freeRTOS\STM32F103T6UX_FLASH.ld" --specs=nosys.specs -Wl,-Map="freeRTOS.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	arm-none-eabi-gcc -o "freeRTOS.axf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\Users\Abnaby\STM32CubeIDE\workspace_1.4.0\freeRTOS\STM32F103T6UX_FLASH.ld" --specs=nosys.specs -Wl,-Map="freeRTOS.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

freeRTOS.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "freeRTOS.list"
	@echo 'Finished building: $@'
	@echo ' '

freeRTOS.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "freeRTOS.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
