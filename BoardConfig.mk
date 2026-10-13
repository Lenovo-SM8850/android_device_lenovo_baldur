#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Paths
DEVICE_PATH := device/lenovo/baldur

# Partitions
BOARD_SUPER_PARTITION_SIZE := 21474836480

# Include the common OEM chipset BoardConfig.
include device/lenovo/sm8850-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := baldur,TB323FU

# Display
TARGET_SCREEN_DENSITY := 440

# Recovery
TARGET_RECOVERY_UI_BRIGHTNESS_FILE := /sys/class/backlight/panel0-backlight/brightness
TARGET_RECOVERY_UI_MAX_BRIGHTNESS_FILE := /sys/class/backlight/panel0-backlight/max_brightness

# Verified Boot
BOARD_AVB_BOOT_ROLLBACK_INDEX := 1749081600
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := 1783209600

# Include the proprietary files makefile.
include vendor/lenovo/baldur/BoardConfigVendor.mk
