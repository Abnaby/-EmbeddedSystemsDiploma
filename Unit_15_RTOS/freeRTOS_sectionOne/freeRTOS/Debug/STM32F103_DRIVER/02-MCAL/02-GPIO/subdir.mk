################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../STM32F103_DRIVER/02-MCAL/02-GPIO/GPIO_program.c 

OBJS += \
./STM32F103_DRIVER/02-MCAL/02-GPIO/GPIO_program.o 

C_DEPS += \
./STM32F103_DRIVER/02-MCAL/02-GPIO/GPIO_program.d 


# Each subdirectory must supply rules for building sources it contributes
STM32F103_DRIVER/02-MCAL/02-GPIO/GPIO_program.o: ../STM32F103_DRIVER/02-MCAL/02-GPIO/GPIO_program.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"STM32F103_DRIVER/02-MCAL/02-GPIO/GPIO_program.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

