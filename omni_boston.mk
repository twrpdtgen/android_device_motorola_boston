#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from boston device
$(call inherit-product, device/motorola/boston/device.mk)

PRODUCT_DEVICE := boston
PRODUCT_NAME := omni_boston
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus 5G - 2024
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="boston-user 12 U2UBS34.44-57-6 c77dd4 release-keys"

BUILD_FINGERPRINT := motorola/boston/boston:12/U2UBS34.44-57-6/c77dd4:user/release-keys
