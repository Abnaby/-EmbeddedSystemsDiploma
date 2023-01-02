################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/MCAL/SPI/SPI_program.c 

OBJS += \
./Inc/MCAL/SPI/SPI_program.o 

C_DEPS += \
./Inc/MCAL/SPI/SPI_program.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/MCAL/SPI/SPI_program.o: ../Inc/MCAL/SPI/SPI_program.c
	arm-none-eabi-gcc -gdwarf-2 "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -DDEBUG -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Inc/MCAL/SPI/SPI_program.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

