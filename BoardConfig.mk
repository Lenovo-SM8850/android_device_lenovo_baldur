#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Paths
DEVICE_PATH := device/lenovo/baldur

# Include the common OEM chipset BoardConfig.
include device/lenovo/sm8850-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 440

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/properties/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Verified Boot
BOARD_AVB_BOOT_ROLLBACK_INDEX := 1749081600
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := 1783209600

