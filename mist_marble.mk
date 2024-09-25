#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from marble device
$(call inherit-product, device/xiaomi/marble/device.mk)

# Inherit from common Mist configuration
$(call inherit-product, vendor/mist/config/common_full_phone.mk)

# Mist Build stuff
WITH_GAPPS := false
TARGET_SUPPORTS_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_LAUNCHER := false
MIST_CHIPSET := SM7475
MIST_BATTERY := 5000mah
MIST_DISPLAY := 1080x2400
TARGET_DISABLE_EPPE := true

# Maintainer stuff
MIST_BUILD_TYPE := UNOFFICIAL
MIST_MAINTAINER := Mauls

PRODUCT_NAME := mist_marble
PRODUCT_DEVICE := marble
PRODUCT_MANUFACTURER := Xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.8.0.UMRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
