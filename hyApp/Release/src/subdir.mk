################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/HYButtons.c \
../src/HYCore.c \
../src/HYIntc.c \
../src/HYLeds.c \
../src/HYMain.c \
../src/HYTimer.c \
../src/v6_ddrx_mem_test_example.c \
../src/mdio.c \
../src/xaxidma_example_sg_poll.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/HYButtons.o \
./src/HYCore.o \
./src/HYIntc.o \
./src/HYLeds.o \
./src/HYMain.o \
./src/HYTimer.o \
./src/v6_ddrx_mem_test_example.o \
./src/mdio.o \
./src/xaxidma_example_sg_poll.o 

C_DEPS += \
./src/HYButtons.d \
./src/HYCore.d \
./src/HYIntc.d \
./src/HYLeds.d \
./src/HYMain.d \
./src/HYTimer.d \
./src/v6_ddrx_mem_test_example.d \
./src/mdio.d \
./src/xaxidma_example_sg_poll.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo Building file: $<
	@echo Invoking: MicroBlaze gcc compiler
	mb-gcc -Wall -O3 -c -fmessage-length=0 -I../../microblaze_0/include -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.20.b -mno-xl-soft-mul -mhard-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo Finished building: $<
	@echo ' '


