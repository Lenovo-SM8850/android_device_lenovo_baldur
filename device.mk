#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/baldur

# Device init
PRODUCT_PACKAGES += ueventd.lenovo.rc

PRODUCT_PACKAGES += \
    init.lenovo.baldur.rc

# Pen
PRODUCT_PACKAGES += \
    init.baldur.pen.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/NVTCapacitivePen.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/NVTCapacitivePen.idc

# Display
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Hardware configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/sku_alor/resourcemanager_alor_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_cdp.xml \
    $(LOCAL_PATH)/configs/audio/sku_alor/resourcemanager_alor_mtp_wcd9378.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_mtp_wcd9378.xml \
    $(LOCAL_PATH)/configs/audio/sku_alor/resourcemanager_alor_mtp_wcd939x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_mtp_wcd939x.xml \
    $(LOCAL_PATH)/configs/audio/sku_alor/resourcemanager_alor_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_qrd.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/mixer_paths_canoe_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_cdp.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/mixer_paths_canoe_cdp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_cdp_wsa884x.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/mixer_paths_canoe_cdp_wsa885xi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_cdp_wsa885xi2s.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/mixer_paths_canoe_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_mtp.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/mixer_paths_canoe_mtp_qmp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_mtp_qmp.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/mixer_paths_canoe_mtp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_mtp_wsa884x.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/resourcemanager_canoe_atp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_atp.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/resourcemanager_canoe_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_cdp.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/resourcemanager_canoe_cdp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_cdp_wsa884x.xml \
    $(LOCAL_PATH)/configs/audio/sku_canoe/resourcemanager_canoe_cdp_wsa885xi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_cdp_wsa885xi2s.xml \
    $(LOCAL_PATH)/configs/display/displayconfig/display_id_4630946916234099603.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946916234099603.xml \

# IMS
# SystemUI requires IMS discovery on Wi-Fi-only devices.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayBaldur \
    FrameworksResTargetBaldur

# Recovery

# Recovery touch requires Novatek firmware in the direct search path.
PRODUCT_COPY_FILES += \
    vendor/lenovo/baldur/proprietary/vendor/firmware/novatek_ts_fw.bin:$(TARGET_COPY_OUT_RECOVERY)/root/lib/firmware/novatek_ts_fw.bin

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

LENOVO_DEVICE_CONFIG_PATH := device/lenovo/baldur
include device/lenovo/sm8850-common/device-configs.mk

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/lenovo/sm8850-common/common.mk)

# Include the proprietary files makefile.
$(call inherit-product, vendor/lenovo/baldur/baldur-vendor.mk)
