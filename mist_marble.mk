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
WITH_GAPPS := true
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
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 23049PCD8G

PRODUCT_SYSTEM_NAME := marble_global
PRODUCT_SYSTEM_DEVICE := marble

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="marble_global-user 14 UKQ1.230804.001 V816.0.8.0.UMRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := POCO/marble_global/marble:14/UKQ1.230804.001/V816.0.8.0.UMRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
