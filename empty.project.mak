####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 10                                              #
####################################################################

BASE_SDK_PATH = C:/Users/leonardo/SimplicityStudio/SDKs/gecko_sdk_2
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.1.0

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

ASM_DEFS += \
 '-DDEBUG_EFM=1' \
 '-DEFR32MG12P332F1024GL125=1' \
 '-DSL_BOARD_NAME="BRD4166A"' \
 '-DSL_BOARD_REV="D03"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Include \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/startup_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG12P/Source/system_efr32mg12p.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s1.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s1.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/project/app.o: app.c
	@echo 'Building app.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@echo 'Building autogen/sl_board_default_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@echo 'Building autogen/sl_device_init_clocks.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@echo 'Building autogen/sl_event_handler.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA