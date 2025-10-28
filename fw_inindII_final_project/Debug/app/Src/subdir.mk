################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../app/Src/app_sm.c \
../app/Src/control.c 

OBJS += \
./app/Src/app_sm.o \
./app/Src/control.o 

C_DEPS += \
./app/Src/app_sm.d \
./app/Src/control.d 


# Each subdirectory must supply rules for building sources it contributes
app/Src/%.o app/Src/%.su app/Src/%.cyclo: ../app/Src/%.c app/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U585xx -c -I../Core/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc -I../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../Drivers/CMSIS/Include -I"/home/pedro-bittencourt/ININD2_F411_FINAL/fw_inindII_final_project/app" -I"/home/pedro-bittencourt/ININD2_F411_FINAL/fw_inindII_final_project/app/Inc" -I"/home/pedro-bittencourt/ININD2_F411_FINAL/fw_inindII_final_project/app/Src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-app-2f-Src

clean-app-2f-Src:
	-$(RM) ./app/Src/app_sm.cyclo ./app/Src/app_sm.d ./app/Src/app_sm.o ./app/Src/app_sm.su ./app/Src/control.cyclo ./app/Src/control.d ./app/Src/control.o ./app/Src/control.su

.PHONY: clean-app-2f-Src

