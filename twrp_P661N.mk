#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from P661N device
$(call inherit-product, device/itel/P661N/device.mk)

# Include Fox props
$(call inherit-product, device/itel/P661N/fox.mk)

PRODUCT_DEVICE := P661N
PRODUCT_NAME := twrp_P661N
PRODUCT_BRAND := ITEL
PRODUCT_MODEL := itel P661N
PRODUCT_MANUFACTURER := itel

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Itel/pb_P661N/P661N:13/SD2A.220601.004.B2/nino08802061117:eng/test-keys"

BUILD_FINGERPRINT := Itel/P661N-GL/itel-P661N:13/TP1A.220624.014/250106V612:user/release-keys
