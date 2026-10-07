#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/baldur

# Device init
PRODUCT_PACKAGES += \
    init.lenovo.baldur.rc

# Pen
PRODUCT_PACKAGES += \
    LenovoPen \
    LenovoPenResTarget \
    init.baldur.pen.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/NVTCapacitivePen.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/NVTCapacitivePen.idc

# Display
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Health
LENOVO_HEALTH_SERVICE := android.hardware.health-service.lenovo

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.lenovo \
    LenovoLegionHalo

# Hardware configuration
PRODUCT_COPY_FILES += \
    device/lenovo/baldur/configs/audio/audio_module_config_primary.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/audio_module_config_primary.xml \
    device/lenovo/baldur/configs/audio/sku_alor/resourcemanager_alor_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_cdp.xml \
    device/lenovo/baldur/configs/audio/sku_alor/resourcemanager_alor_mtp_wcd9378.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_mtp_wcd9378.xml \
    device/lenovo/baldur/configs/audio/sku_alor/resourcemanager_alor_mtp_wcd939x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_mtp_wcd939x.xml \
    device/lenovo/baldur/configs/audio/sku_alor/resourcemanager_alor_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/resourcemanager_alor_qrd.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/audio_effects_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/audio_effects_config.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/mixer_paths_canoe_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_cdp.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/mixer_paths_canoe_cdp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_cdp_wsa884x.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/mixer_paths_canoe_cdp_wsa885xi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_cdp_wsa885xi2s.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/mixer_paths_canoe_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_mtp.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/mixer_paths_canoe_mtp_qmp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_mtp_qmp.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/mixer_paths_canoe_mtp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_mtp_wsa884x.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/mixer_paths_canoe_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_qrd.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_atp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_atp.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_cdp.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_cdp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_cdp_wsa884x.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_cdp_wsa885xi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_cdp_wsa885xi2s.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_mtp.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_mtp_qmp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_mtp_qmp.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_mtp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_mtp_wsa884x.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_qrd.xml \
    device/lenovo/baldur/configs/audio/sku_canoe/resourcemanager_canoe_qrd_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/resourcemanager_canoe_qrd_wsa884x.xml \
    device/lenovo/baldur/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    device/lenovo/baldur/configs/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml \
    device/lenovo/baldur/configs/display/sdm_display_resolution_extn.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display/sdm_display_resolution_extn.xml \
    device/lenovo/baldur/configs/display/displayconfig/display_id_4630946916234099603.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946916234099603.xml \
    device/lenovo/baldur/configs/perf/perfconfigstore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfconfigstore.xml \
    device/lenovo/baldur/configs/perf/qapeconfigstore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/qapeconfigstore.xml \
    device/lenovo/baldur/configs/power/powerhint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.xml

# IMS
# Without this feature ImsManager is null; SystemUI injects it non-null
# Through ImsRepository/WifiRepositoryImpl, including on Wi-Fi-only devices.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayBaldur \
    FrameworksResTargetBaldur \
    LineageResOverlayBaldur

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Touch
PRODUCT_PACKAGES += \
    LineageParts \
    LenovoTouchscreenRotation \
    init.lenovo.touch.rc \
    vendor.lineage.touch-service.lenovo

$(call soong_config_set_bool,lenovotouch,high_touch_polling_rate,true)
$(call soong_config_set,lenovotouch,high_report_rate_node,/proc/HighReportRate)
$(call soong_config_set,lenovotouch,high_report_rate_enable,1)
$(call soong_config_set,lenovotouch,high_report_rate_disable,0)
$(call soong_config_set_bool,lenovopower,double_tap_to_wake,true)
$(call soong_config_set,lenovopower,gesture_node,/proc/gesture_mode)
$(call soong_config_set,lenovopower,gesture_enable,1)
$(call soong_config_set,lenovopower,gesture_disable,0)
$(call inherit-product, hardware/lenovo/touch/touch.mk)

# Cover
PRODUCT_PACKAGES += lenovo-cover

# Board display, cover and touch resources
PRODUCT_PACKAGES += \
    FrameworksResOverlayCanoe \
    SettingsOverlayCanoe

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/lenovo/sm8850-common/common.mk)

# Include the proprietary files makefile.
$(call inherit-product, vendor/lenovo/baldur/baldur-vendor.mk)
