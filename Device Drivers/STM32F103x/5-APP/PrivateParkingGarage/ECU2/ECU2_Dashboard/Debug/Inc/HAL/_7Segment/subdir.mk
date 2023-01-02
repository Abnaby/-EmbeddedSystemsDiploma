################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/HAL/_7Segment/_7Segment.c 

OBJS += \
./Inc/HAL/_7Segment/_7Segment.o 

C_DEPS += \
./Inc/HAL/_7Segment/_7Segment.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/HAL/_7Segment/_7Segment.o: ../Inc/HAL/_7Segment/_7Segment.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Inc/HAL/_7Segment/_7Segment.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

