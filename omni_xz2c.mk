#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from xz2c device
$(call inherit-product, device/sony/xz2c/device.mk)

PRODUCT_DEVICE := xz2c
PRODUCT_NAME := omni_xz2c
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XZ2 Compact
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="H8324-user 10 52.1.A.3.49 052001A003004902006556692 release-keys"

BUILD_FINGERPRINT := Sony/H8324/H8324:10/52.1.A.3.49/052001A003004902006556692:user/release-keys

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
