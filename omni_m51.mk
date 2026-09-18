#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)

PRODUCT_DEVICE := m51
PRODUCT_NAME := omni_m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M515F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m51nsxx-user 11 RP1A.200720.012 M515FXXU6DXJ1 release-keys"

BUILD_FINGERPRINT := samsung/m51nsxx/m51:11/RP1A.200720.012/M515FXXU6DXJ1:user/release-keys
