################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freeRTOS/croutine.c \
../freeRTOS/event_groups.c \
../freeRTOS/list.c \
../freeRTOS/queue.c \
../freeRTOS/stream_buffer.c \
../freeRTOS/tasks.c \
../freeRTOS/timers.c 

OBJS += \
./freeRTOS/croutine.o \
./freeRTOS/event_groups.o \
./freeRTOS/list.o \
./freeRTOS/queue.o \
./freeRTOS/stream_buffer.o \
./freeRTOS/tasks.o \
./freeRTOS/timers.o 

C_DEPS += \
./freeRTOS/croutine.d \
./freeRTOS/event_groups.d \
./freeRTOS/list.d \
./freeRTOS/queue.d \
./freeRTOS/stream_buffer.d \
./freeRTOS/tasks.d \
./freeRTOS/timers.d 


# Each subdirectory must supply rules for building sources it contributes
freeRTOS/croutine.o: ../freeRTOS/croutine.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/croutine.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
freeRTOS/event_groups.o: ../freeRTOS/event_groups.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/event_groups.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
freeRTOS/list.o: ../freeRTOS/list.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/list.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
freeRTOS/queue.o: ../freeRTOS/queue.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/queue.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
freeRTOS/stream_buffer.o: ../freeRTOS/stream_buffer.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/stream_buffer.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
freeRTOS/tasks.o: ../freeRTOS/tasks.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/tasks.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
freeRTOS/timers.o: ../freeRTOS/timers.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DDEBUG -DSTM32F103T6Ux -c -I../Inc -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/include" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/freeRTOS/portable/GCC/ARM_CM3" -I"C:/Users/Abnaby/STM32CubeIDE/workspace_1.4.0/freeRTOS/STM32F103_DRIVER" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"freeRTOS/timers.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

