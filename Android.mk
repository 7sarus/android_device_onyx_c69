#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),c69)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Rule to provide dtb.img in PRODUCT_OUT for recovery packaging
INSTALLED_DTBIMAGE_TARGET := $(PRODUCT_OUT)/dtb.img
$(INSTALLED_DTBIMAGE_TARGET): $(LOCAL_PATH)/prebuilt/dtb.img
	$(hide) mkdir -p $(dir $@)
	$(hide) cp -f $< $@
endif
