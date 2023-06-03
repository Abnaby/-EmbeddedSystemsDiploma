################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freeRTOS/portable/MemMang/heap_4.c 

OBJS += \
./freeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./freeRTOS/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
freeRTOS/portable/MemMang/heap_4.o: ../freeRTOS/portable/MemMang/heap_4.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/portable/MemMang/heap_4.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

