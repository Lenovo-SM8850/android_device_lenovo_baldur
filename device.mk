#
# SPDX-FileCopyrightText: 2026 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/baldur

# Display
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

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
    device/lenovo/baldur/configs/audio/usecaseKvManager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usecaseKvManager.xml

# IMS
# Without this feature ImsManager is null; SystemUI injects it non-null
# through ImsRepository/WifiRepositoryImpl, including on Wi-Fi-only devices.
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Camera capabilities
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.concurrent.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.concurrent.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

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
