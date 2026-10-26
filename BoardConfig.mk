#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#

DEVICE_PATH := device/onyx/c69

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := c69,C69_M_STAR

# Bootloader / Platform
TARGET_BOOTLOADER_BOARD_NAME := bengal
TARGET_BOARD_PLATFORM := bengal
TARGET_NO_BOOTLOADER := true

# Kernel & Boot Image Configuration
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0x4a90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 loop.max_part=7
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_TAGS_OFFSET := 0x00000100
BOARD_DTB_OFFSET := 0x01f00000
BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

# Prebuilt Kernel & DTBs
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_RECOVERY_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# Partitions Sizes (from verified fastboot/EDL tables)
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296        # 96 MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296    # 96 MB
BOARD_DTBOIMG_PARTITION_SIZE := 25165824          # 24 MB
BOARD_FLASH_BLOCK_SIZE := 262144

# A/B System
AB_OTA_UPDATER := true
BOARD_USES_RECOVERY_AS_BOOT := false

# Dynamic Partitions
BOARD_USES_DYNAMIC_PARTITIONS := true
BOARD_SUPER_PARTITION_SIZE := 4294967296          # 4096 MB
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 4290772992   # 4092 MB (super - 4MB overhead)
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product

# File Systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Recovery FSTAB
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# TWRP Configuration (E-Ink & Hardware Key Tuning)
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 758x1024
TW_ROTATION := 270
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

# E-Ink Specific Settings
TW_NO_SCREEN_TIMEOUT := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true

# GUI Positioning
TW_CUSTOM_CPU_POS := "300"
