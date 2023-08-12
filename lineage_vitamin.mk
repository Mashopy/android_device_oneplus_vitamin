#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/oneplus/vitamin/device.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := OnePlus
PRODUCT_DEVICE := vitamin
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := CPH2491
PRODUCT_NAME := lineage_vitamin

PRODUCT_SYSTEM_DEVICE := OP556FL1
PRODUCT_SYSTEM_NAME := CPH2491

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn_armv82-user 13 TP1A.220905.001 1690776554429 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2491/OP556FL1:13/SP1A.210812.016/T.R4T3.124f58c_9ce-2:user/release-keys
