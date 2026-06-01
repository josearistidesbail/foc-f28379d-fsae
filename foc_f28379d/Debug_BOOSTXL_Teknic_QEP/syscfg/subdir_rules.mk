################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
build-2113270756: ../syscfg/board_boostxl_drv8305.syscfg
	@echo 'SysConfig - building file: "$<"'
	"/home/jose/ti/ccs2051/ccs/utils/sysconfig_1.27.1/sysconfig_cli.sh" -s "/home/jose/ti/c2000/C2000Ware_26_01_00_00/.metadata/sdk.json" -d "F2837xD" -p "F2837xD_337ZWT" -r "F2837xD_337ZWT" --script "/home/jose/workspace_ccstheia/foc_f28379d/syscfg/board_boostxl_drv8305.syscfg" -o "syscfg" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-2113270756 ../syscfg/board_boostxl_drv8305.syscfg
syscfg/board.h: build-2113270756
syscfg/board.cmd.genlibs: build-2113270756
syscfg/board.opt: build-2113270756
syscfg/board.json: build-2113270756
syscfg/pinmux.csv: build-2113270756
syscfg/epwm.dot: build-2113270756
syscfg/adc.dot: build-2113270756
syscfg/c2000ware_libraries.cmd.genlibs: build-2113270756
syscfg/c2000ware_libraries.opt: build-2113270756
syscfg/c2000ware_libraries.c: build-2113270756
syscfg/c2000ware_libraries.h: build-2113270756
syscfg/clocktree.h: build-2113270756
syscfg: build-2113270756

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'C2000 Compiler - building file: "$<"'
	"/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --opt_for_speed=5 --fp_mode=relaxed --include_path="/home/jose/workspace_ccstheia/foc_f28379d" --include_path="/home/jose/workspace_ccstheia/foc_f28379d" --include_path="/home/jose/workspace_ccstheia/foc_f28379d/include" --include_path="/home/jose/workspace_ccstheia/foc_f28379d/config" --include_path="/home/jose/workspace_ccstheia/foc_f28379d/imported" --include_path="/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/common/include" --include_path="/home/jose/ti/c2000/C2000Ware_26_01_00_00/device_support/f2837xd/headers/include" --include_path="/home/jose/ti/c2000/C2000Ware_26_01_00_00/driverlib/f2837xd/driverlib" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/math/include" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/utilities/types/include" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/clarke/include" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/park/include" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/ipark/include" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/transforms/svgen/include" --include_path="/home/jose/ti/c2000/C2000Ware_MotorControl_SDK_5_04_00_00/libraries/control/pi/include" --include_path="/home/jose/ti/ccs2051/ccs/tools/compiler/ti-cgt-c2000_25.11.0.LTS/include" --define=HW_BOOSTXL_DRV8305 --define=MOTOR_TEKNIC_M2310P --define=SENSOR_QEP --define=_DEBUG --define=_FLASH --define=CPU1 --define=_F2837X --define=F2837x_DEVICE --define=_DUAL_HEADERS --define=LARGE_MODEL -g --diag_suppress=10063 --diag_warning=225 --diag_wrap=off --display_error_number --quiet --gen_func_subsections=on --abi=eabi -k --asm_listing --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="/home/jose/workspace_ccstheia/foc_f28379d/Debug_BOOSTXL_Teknic_QEP/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


