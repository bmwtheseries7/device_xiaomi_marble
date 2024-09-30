#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common AfterlifeOS configuration
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

AFTERLIFE_MAINTAINER := Mauls
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device configs
TARGET_BOOT_ANIMATION_RES = 1080
TARGET_UDFPS_ANIMATIONS := true

PRODUCT_NAME := afterlife_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.8.0.UMRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
