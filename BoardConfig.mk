#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lenovo/baldur

# Include the common OEM chipset BoardConfig.
include device/lenovo/sm8850-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 440

# Verified Boot
BOARD_AVB_BOOT_ROLLBACK_INDEX := 1749081600

# Include the proprietary files BoardConfig.
include vendor/lenovo/baldur/BoardConfigVendor.mk
