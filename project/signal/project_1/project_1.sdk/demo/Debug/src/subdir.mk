################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/VGA.c \
../src/crc.c \
../src/main.c \
../src/num_extraction.c \
../src/platform.c \
../src/uart_init.c \
../src/xbpnn.c \
../src/xbpnn_sinit.c 

OBJS += \
./src/VGA.o \
./src/crc.o \
./src/main.o \
./src/num_extraction.o \
./src/platform.o \
./src/uart_init.o \
./src/xbpnn.o \
./src/xbpnn_sinit.o 

C_DEPS += \
./src/VGA.d \
./src/crc.d \
./src/main.d \
./src/num_extraction.d \
./src/platform.d \
./src/uart_init.d \
./src/xbpnn.d \
./src/xbpnn_sinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../demo_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


