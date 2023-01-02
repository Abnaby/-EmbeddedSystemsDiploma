################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/MCAL/I2C/I2C_program.c 

OBJS += \
./Inc/MCAL/I2C/I2C_program.o 

C_DEPS += \
./Inc/MCAL/I2C/I2C_program.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/MCAL/I2C/I2C_program.o: ../Inc/MCAL/I2C/I2C_program.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Inc/MCAL/I2C/I2C_program.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

