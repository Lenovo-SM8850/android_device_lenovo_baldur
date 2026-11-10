#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lenovo/baldur

# Include the common OEM chipset BoardConfig.
include device/lenovo/sm8850-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := baldur,TB323FU

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
BOOT_KERNEL_MODULES += mbhc_dlkm.ko

# Recovery
TARGET_RECOVERY_UI_BRIGHTNESS_FILE := /sys/class/backlight/panel0-backlight/brightness
TARGET_RECOVERY_UI_MAX_BRIGHTNESS_FILE := /sys/class/backlight/panel0-backlight/max_brightness

# Verified Boot
BOARD_AVB_BOOT_ROLLBACK_INDEX := 1772668800

# Include the proprietary files BoardConfig.
include vendor/lenovo/baldur/BoardConfigVendor.mk
