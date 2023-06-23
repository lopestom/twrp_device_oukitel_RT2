#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from RT2 device
$(call inherit-product, device/oukitel/RT2/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RT2
PRODUCT_NAME := twrp_RT2
PRODUCT_BRAND := OUKITEL
PRODUCT_MODEL := RT2
PRODUCT_MANUFACTURER := wheatek
PRODUCT_RELEASE_NAME := OUKITEL RT2

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RT2 \
    PRODUCT_NAME=RT2_EEA \
    PRIVATE_BUILD_DESC="full_tp718_oq_p05_8788_s0_eea-user 12 SP1A.210812.016 1678672122 release-keys"

BUILD_FINGERPRINT := OUKITEL/RT2_EEA/RT2:12/SP1A.210812.016/1678672122:user/release-keys

#ro.build.version.base_os=OUKITEL/RT2_EEA/RT2:12/SP1A.210812.016/1661171180:user/release-keys
