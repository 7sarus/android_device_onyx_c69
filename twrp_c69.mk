#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#

# Inherit from base AOSP / TWRP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/onyx/c69/device.mk)

# Device identification
PRODUCT_DEVICE := c69
PRODUCT_NAME := twrp_c69
PRODUCT_BRAND := Onyx
PRODUCT_MODEL := C69_M_STAR
PRODUCT_MANUFACTURER := ONYX

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=C69_M_STAR \
    TARGET_DEVICE=c69
