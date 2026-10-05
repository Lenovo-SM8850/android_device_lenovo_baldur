#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/baldur
DEVICE_PATH := $(LOCAL_PATH)

PRODUCT_PACKAGES += \
    init.baldur.rc

LENOVO_DEVICE_CONFIG_PATH := device/lenovo/baldur

# Display
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# IMS
# SystemUI requires IMS discovery on Wi-Fi-only devices.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/lenovo/sm8850-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/lenovo/baldur/baldur-vendor.mk)
