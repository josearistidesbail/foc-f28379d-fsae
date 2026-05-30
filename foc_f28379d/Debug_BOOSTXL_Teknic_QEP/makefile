################################################################################
# Automatically-generated file. Do not edit!
################################################################################

CG_TOOL_ROOT := /home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS

GEN_OPTS__FLAG := --cmd_file="syscfg/board.opt" --cmd_file="syscfg/c2000ware_libraries.opt" 
GEN_CMDS__FLAG := 

ORDERED_OBJS += \
"./imported/app/main.obj" \
"./imported/app/motor_control.obj" \
"./imported/foc/foc.obj" \
"./imported/hal/drv8305.obj" \
"./imported/hal/hal_adc.obj" \
"./imported/hal/hal_board.obj" \
"./imported/hal/hal_pwm.obj" \
"./imported/hal/hal_qep.obj" \
"./libraries/transforms/clarke/source/clarke.obj" \
"./src/adc_iface.obj" \
"./src/debug_hooks.obj" \
"./src/debug_iface.obj" \
"./src/foc_pipeline.obj" \
"./src/foc_state_machine.obj" \
"./src/inverter_custom_v2.obj" \
"./src/inverter_drv8305.obj" \
"./src/isr.obj" \
"./src/main.obj" \
"./src/pwm_iface.obj" \
"./src/safety.obj" \
"./src/sensor_qep.obj" \
"./src/sensor_rm44ac.obj" \
"./src_device/F2837xD_CodeStartBranch.obj" \
"./src_device/F2837xD_GlobalVariableDefs.obj" \
"./src_device/device.obj" \
"./syscfg/board.obj" \
"./syscfg/c2000ware_libraries.obj" \
"./ti_lib/clarke.obj" \
"./ti_lib/ipark.obj" \
"./ti_lib/park.obj" \
"./ti_lib/pi.obj" \
"./ti_lib/svgen.obj" \
"../2837x_FLASH_lnk_cpu1.cmd" \
"/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib/ccs/Release/driverlib.lib" \
"/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/cmd/2837xD_FLASH_lnk_cpu1.cmd" \
$(GEN_CMDS__FLAG) \
-llibc.a \

-include ../makefile.init

RM := rm -rf
RMDIR := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include imported/app/subdir_vars.mk
-include imported/foc/subdir_vars.mk
-include imported/hal/subdir_vars.mk
-include libraries/transforms/clarke/source/subdir_vars.mk
-include src/subdir_vars.mk
-include src_device/subdir_vars.mk
-include syscfg/subdir_vars.mk
-include ti_lib/subdir_vars.mk
-include subdir_rules.mk
-include imported/app/subdir_rules.mk
-include imported/foc/subdir_rules.mk
-include imported/hal/subdir_rules.mk
-include libraries/transforms/clarke/source/subdir_rules.mk
-include src/subdir_rules.mk
-include src_device/subdir_rules.mk
-include syscfg/subdir_rules.mk
-include ti_lib/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(SV7A_DEPS)),)
-include $(SV7A_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
foc_f28379d.out 

EXE_OUTPUTS__QUOTED += \
"foc_f28379d.out" 


# All Target
all: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@$(MAKE) --no-print-directory -Onone "foc_f28379d.out"

# Tool invocations
foc_f28379d.out: $(OBJS) $(CMD_SRCS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'C2000 Linker - building target: "$@"'
	"/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --opt_for_speed=5 --fp_mode=relaxed --define=HW_BOOSTXL_DRV8305 --define=MOTOR_TEKNIC_M2310P --define=SENSOR_QEP --define=_DEBUG --define=_FLASH --define=CPU1 --define=_F2837X --define=F2837x_DEVICE --define=_DUAL_HEADERS --define=LARGE_MODEL -g --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --gen_func_subsections=on --abi=eabi -k --asm_listing -z -m"foc_f28379d.map" --stack_size=0x380 --warn_sections -i"/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/lib" -i"/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include" --reread_libs --diag_wrap=off --display_error_number --xml_link_info="foc_f28379d_linkInfo.xml" --entry_point=code_start --rom_model -o "foc_f28379d.out" $(ORDERED_OBJS)
	@echo 'Finished building target: "$@"'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(GEN_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)
	-$(RM) "imported/app/main.lst" "imported/app/motor_control.lst" "imported/foc/foc.lst" "imported/hal/drv8305.lst" "imported/hal/hal_adc.lst" "imported/hal/hal_board.lst" "imported/hal/hal_pwm.lst" "imported/hal/hal_qep.lst" "libraries/transforms/clarke/source/clarke.lst" "src/adc_iface.lst" "src/debug_hooks.lst" "src/debug_iface.lst" "src/foc_pipeline.lst" "src/foc_state_machine.lst" "src/inverter_custom_v2.lst" "src/inverter_drv8305.lst" "src/isr.lst" "src/main.lst" "src/pwm_iface.lst" "src/safety.lst" "src/sensor_qep.lst" "src/sensor_rm44ac.lst" "src_device/F2837xD_CodeStartBranch.lst" "src_device/F2837xD_GlobalVariableDefs.lst" "src_device/device.lst" "syscfg/board.lst" "syscfg/c2000ware_libraries.lst" "ti_lib/clarke.lst" "ti_lib/ipark.lst" "ti_lib/park.lst" "ti_lib/pi.lst" "ti_lib/svgen.lst" 
	-$(RM) "imported/app/main.obj" "imported/app/motor_control.obj" "imported/foc/foc.obj" "imported/hal/drv8305.obj" "imported/hal/hal_adc.obj" "imported/hal/hal_board.obj" "imported/hal/hal_pwm.obj" "imported/hal/hal_qep.obj" "libraries/transforms/clarke/source/clarke.obj" "src/adc_iface.obj" "src/debug_hooks.obj" "src/debug_iface.obj" "src/foc_pipeline.obj" "src/foc_state_machine.obj" "src/inverter_custom_v2.obj" "src/inverter_drv8305.obj" "src/isr.obj" "src/main.obj" "src/pwm_iface.obj" "src/safety.obj" "src/sensor_qep.obj" "src/sensor_rm44ac.obj" "src_device/F2837xD_CodeStartBranch.obj" "src_device/F2837xD_GlobalVariableDefs.obj" "src_device/device.obj" "syscfg/board.obj" "syscfg/c2000ware_libraries.obj" "ti_lib/clarke.obj" "ti_lib/ipark.obj" "ti_lib/park.obj" "ti_lib/pi.obj" "ti_lib/svgen.obj" 
	-$(RM) "imported/app/main.d" "imported/app/motor_control.d" "imported/foc/foc.d" "imported/hal/drv8305.d" "imported/hal/hal_adc.d" "imported/hal/hal_board.d" "imported/hal/hal_pwm.d" "imported/hal/hal_qep.d" "libraries/transforms/clarke/source/clarke.d" "src/adc_iface.d" "src/debug_hooks.d" "src/debug_iface.d" "src/foc_pipeline.d" "src/foc_state_machine.d" "src/inverter_custom_v2.d" "src/inverter_drv8305.d" "src/isr.d" "src/main.d" "src/pwm_iface.d" "src/safety.d" "src/sensor_qep.d" "src/sensor_rm44ac.d" "src_device/F2837xD_GlobalVariableDefs.d" "src_device/device.d" "syscfg/board.d" "syscfg/c2000ware_libraries.d" "syscfg/board.d" "syscfg/c2000ware_libraries.d" "ti_lib/clarke.d" "ti_lib/ipark.d" "ti_lib/park.d" "ti_lib/pi.d" "ti_lib/svgen.d" 
	-$(RM) "imported/app/main.asm" "imported/app/motor_control.asm" "imported/foc/foc.asm" "imported/hal/drv8305.asm" "imported/hal/hal_adc.asm" "imported/hal/hal_board.asm" "imported/hal/hal_pwm.asm" "imported/hal/hal_qep.asm" "libraries/transforms/clarke/source/clarke.asm" "src/adc_iface.asm" "src/debug_hooks.asm" "src/debug_iface.asm" "src/foc_pipeline.asm" "src/foc_state_machine.asm" "src/inverter_custom_v2.asm" "src/inverter_drv8305.asm" "src/isr.asm" "src/main.asm" "src/pwm_iface.asm" "src/safety.asm" "src/sensor_qep.asm" "src/sensor_rm44ac.asm" "src_device/F2837xD_CodeStartBranch.asm" "src_device/F2837xD_GlobalVariableDefs.asm" "src_device/device.asm" "syscfg/board.asm" "syscfg/c2000ware_libraries.asm" "ti_lib/clarke.asm" "ti_lib/ipark.asm" "ti_lib/park.asm" "ti_lib/pi.asm" "ti_lib/svgen.asm" 
	-$(RM) "src_device/F2837xD_CodeStartBranch.d" 
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

