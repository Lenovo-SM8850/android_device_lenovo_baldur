#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Paths
DEVICE_PATH := device/lenovo/baldur

# Include the common OEM chipset BoardConfig.
include device/lenovo/sm8850-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_SOURCE := vendor/lenovo/sm8850
TARGET_KERNEL_PLATFORM_TARGET := canoe_perf
TARGET_KERNEL_UNSAFE_DDK_HEADERS := true
TARGET_KERNEL_MIXED_MODE := true

# DTB / DTBO
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_DTB_LIST_WILDCARD := baldur-canoe-base

# Recovery modules
BOOT_KERNEL_MODULES := $(sort $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD) \
    $(BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD) cfg80211.ko cpu_phys_log_map.ko \
    hdcp_qseecom_dlkm.ko libarc4.ko mac80211.ko rfkill.ko smmu_proxy_dlkm.ko \
    tmecom-intf_dlkm.ko tz_log_dlkm.ko wcd_usbss_i2c.ko qts.ko)
RECOVERY_KERNEL_MODULES := $(BOOT_KERNEL_MODULES)

# Display
TARGET_SCREEN_DENSITY := 440

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/private

# Verified Boot
BOARD_AVB_BOOT_ROLLBACK_INDEX := 1749081600
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := 1783209600

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/configs/lights/framework_matrix.xml

# Include the proprietary files makefile.
include vendor/lenovo/baldur/BoardConfigVendor.mk
