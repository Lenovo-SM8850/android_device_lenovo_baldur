#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from the device
$(call inherit-product, device/lenovo/baldur/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_baldur
PRODUCT_DEVICE := baldur
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB323FU

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_SYSTEM_NAME := TB323FU
PRODUCT_SYSTEM_DEVICE := TB323FU

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="TB323FU-user 16 BQ2A.250831.001 88 release-keys" \
    BuildFingerprint=Lenovo/TB323FU_PRC/TB323FU:16/BQ2A.250831.001/ZUXOS_2.0.12.088_260610_PRC:user/release-keys \
    BuildSystemFingerprint=Lenovo/TB323FU_PRC/TB323FU:16/BQ2A.250831.001/ZUXOS_2.0.12.088_260610_PRC:user/release-keys \
    DeviceName=TB323FU \
    DeviceProduct=TB323FU
