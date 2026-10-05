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

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.lenovo

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
# through ImsRepository/WifiRepositoryImpl, including on Wi-Fi-only devices.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayBaldur \
    FrameworksResTargetBaldur \
    LineageResOverlayBaldur \
    WifiResOverlayBaldur

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vendor DLKM
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/modules.blocklist.system_dlkm:$(TARGET_COPY_OUT_VENDOR_DLKM)/lib/modules/system_dlkm.modules.blocklist

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

# Camera capabilities
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.concurrent.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.concurrent.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# Board display, cover and touch resources
PRODUCT_PACKAGES += \
    FrameworksResOverlayCanoe \
    SettingsOverlayCanoe

# Board post-boot tuning (shared dispatchers select topology)
PRODUCT_PACKAGES += \
    init.kernel.post_boot-canoe_5_1.sh \
    init.kernel.post_boot-canoe_5_2.sh \
    init.kernel.post_boot-canoe_6_1.sh \
    init.kernel.post_boot-canoe_default_6_2.sh \
    init.kernel.post_boot-memory.sh

# Audio and haptic defaults
PRODUCT_COPY_FILES += \
    device/lenovo/sm8850-common/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    vendor/qcom/opensource/vibrator/aidl/HapticsPolicy.xml:$(TARGET_COPY_OUT_VENDOR)/etc/HapticsPolicy.xml

# Audio HAL configuration
PRODUCT_COPY_FILES += \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/audio_effects.conf \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/audio_effects.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_effects_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/audio_effects_config.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/audio_policy_configuration.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/quasar_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/quasar_config.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor_qssi/audio_policy_configuration.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_effects.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/audio_effects.conf \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/audio_effects.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/audio_policy_configuration.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/quasar_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/quasar_config.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe_qssi/audio_policy_configuration.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/common/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/common/bluetooth_qti_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_audio_policy_configuration.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/common/bluetooth_qti_hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_qti_hearing_aid_audio_policy_configuration.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/common/codec2/media_codecs_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_c2_audio.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/common/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/mem_logger_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mem_logger_config.xml \
    hardware/qcom-caf/sm8850/audio/primary-hal/configs/canoe/microphone_characteristics.xml:$(TARGET_COPY_OUT_VENDOR)/etc/microphone_characteristics.xml

# Audio mixer paths
PRODUCT_COPY_FILES += \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mixer_paths_alor_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/mixer_paths_alor_cdp.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mixer_paths_alor_mtp_wcd9378.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/mixer_paths_alor_mtp_wcd9378.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mixer_paths_alor_mtp_wcd939x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/mixer_paths_alor_mtp_wcd939x.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mixer_paths_alor_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/mixer_paths_alor_qrd.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mixer_paths_canoe_atp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mixer_paths_canoe_atp.xml

# Audio PAL configuration
PRODUCT_COPY_FILES += \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/Hapticsconfig.xml:$(TARGET_COPY_OUT_VENDOR)/etc/Hapticsconfig.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/plugin_manager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_alor/plugin_manager.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mcs_defs_canoe_cdp_wsa885xi2s.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mcs_defs_canoe_cdp_wsa885xi2s.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mcs_defs_canoe_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mcs_defs_canoe_mtp.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mcs_defs_canoe_mtp_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mcs_defs_canoe_mtp_wsa884x.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mcs_defs_canoe_qrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mcs_defs_canoe_qrd.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/mcs_defs_canoe_qrd_wsa884x.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/mcs_defs_canoe_qrd_wsa884x.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/plugin_manager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_canoe/plugin_manager.xml \
    hardware/qcom-caf/sm8850/audio/pal/configs/qcom/mobile/canoe/card-defs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/card-defs.xml

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/lenovo/sm8850-common/common.mk)

# Include the proprietary files makefile.
$(call inherit-product, vendor/lenovo/baldur/baldur-vendor.mk)
