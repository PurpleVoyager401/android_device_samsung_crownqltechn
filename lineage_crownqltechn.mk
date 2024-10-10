#
# Copyright (C) 2021 AOSPK
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from crownqltechn device
$(call inherit-product, device/samsung/crownqltechn/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_crownqltechn
PRODUCT_DEVICE := crownqltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N9600
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "samsung/crownqltezh/crownqltechn:10/QP1A.190711.020/N9600ZHU9FWC1:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=crownqltezh \
    PRIVATE_BUILD_DESC="crownqltezh-user 10 QP1A.190711.020 N9600ZHU9FWC1 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=N9600ZHU9FWC1 \
    ro.build.fingerprint=samsung/crownqltezh/crownqltechn:10/QP1A.190711.020/N9600ZHU9FWC1:user/release-keys