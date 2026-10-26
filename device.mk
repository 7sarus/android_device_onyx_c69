#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#

LOCAL_PATH := device/onyx/c69

# Enable A/B updater
AB_OTA_UPDATER := true

# A/B partitions
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    recovery \
    vbmeta \
    vbmeta_system

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Prebuilt init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
