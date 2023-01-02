################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/APP/APP.c 

OBJS += \
./Inc/APP/APP.o 

C_DEPS += \
./Inc/APP/APP.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/APP/APP.o: ../Inc/APP/APP.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Inc/APP/APP.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

