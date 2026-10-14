#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/baldur
DEVICE_PATH := $(LOCAL_PATH)

LENOVO_DEVICE_CONFIG_PATH := device/lenovo/baldur

# Display
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Hardware configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/displayconfig/display_id_4630946916234099603.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946916234099603.xml

# IMS
# SystemUI requires IMS discovery on Wi-Fi-only devices.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Init
PRODUCT_PACKAGES += init.baldur.lcd.rc

PRODUCT_PACKAGES += ueventd.baldur.rc

PRODUCT_PACKAGES += \
    init.baldur.rc

# Recovery
# Recovery touch requires Novatek firmware in the direct search path.
PRODUCT_COPY_FILES += \
    vendor/lenovo/baldur/proprietary/vendor/firmware/novatek_ts_fw.bin:$(TARGET_COPY_OUT_RECOVERY)/root/lib/firmware/novatek_ts_fw.bin

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/lenovo/sm8850-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/lenovo/baldur/baldur-vendor.mk)
