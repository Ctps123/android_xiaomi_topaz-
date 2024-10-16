#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device configs
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
WITH_GMS := true

# Whether you are compiling being an OFFICIAL Maintainer:
INFINITY_BUILD_TYPE := UNOFFICIAL

# Maintainer Name
INFINITY_MAINTAINER := "Scorpion" 

# Whether the package includes System BLURS
TARGET_SUPPORTS_BLUR := false

# Whether the device supports UDFPS (FOD)
TARGET_HAS_UDFPS := false

# Whether the compiled package ships Google Apps:
WITH_GAPPS := true

# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
TARGET_BUILD_GOOGLE_TELEPHONY := false

# Whether the device supports screen off touchgestures:
TARGET_SUPPORTS_TOUCHGESTURES := true

# Whether the compiled package ships ViMusic
TARGET_BUILD_VIMUSIC := true

# Whether the compiled package ships Moto Calculator irrespective VANILLA or GAPPS:
USE_MOTO_CALCULATOR := true
