################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/rgbmain.c 

OBJS += \
./src/rgbmain.o 

C_DEPS += \
./src/rgbmain.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 Linux gcc compiler'
	arm-linux-gnueabihf-gcc -Wall -O0 -g3 -I"/home/catabit/Zybo/ledBtnAxiTut/build/tmp/sysroots/plnx_arm/usr/include" -I"/home/catabit/.opt/petalinux/tools/linux-i386/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/include" -I"/home/catabit/.opt/petalinux/tools/linux-i386/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include" -I"/home/catabit/.opt/petalinux/tools/linux-i386/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/6.2.1/include" -I"/home/catabit/.opt/petalinux/tools/linux-i386/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/6.2.1/include-fixed" -c -fmessage-length=0 -MT"$@" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


