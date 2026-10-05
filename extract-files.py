#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from pathlib import Path

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixups,
    lib_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'hardware/lenovo',
    'hardware/qcom-caf/sm8850',
    'hardware/qcom-caf/wlan',
    'vendor/lenovo/sm8850-common',
    'vendor/qcom/opensource/commonsys-intf/display',
    'vendor/qcom/opensource/dataservices',
]

lib_fixups: lib_fixups_user_type = {
    **lib_fixups,
}

# Device blob fixups
blob_fixups: blob_fixups_user_type = {
    (
        'vendor/lib64/soundfx/libquasar.so',
        'vendor/lib64/camera/components/com.qti.node.fd.so',
        'vendor/lib64/hw/camera.qcom.core.so',
        'vendor/lib64/libcamerapoweroptfeature.so',
        'vendor/lib64/libcamxdumpinforecorder.so',
        'vendor/lib64/libpowercore.so',
        'vendor/lib64/libvideooptfeature.so',
    ): blob_fixup()
        .replace_needed('libtinyxml2.so', 'libtinyxml2-v36.so'),
    (
        'vendor/lib64/camera/components/com.qti.node.dewarp.so',
        'vendor/lib64/vendor.qti.hardware.camera.offlinecamera-service-impl.so',
    ): blob_fixup()
        .replace_needed('android.hardware.graphics.allocator-V1-ndk.so', 'android.hardware.graphics.allocator-V2-ndk.so'),
    'vendor/lib64/libqcodec2_core.so': blob_fixup()
        .replace_needed('android.hardware.graphics.common-V5-ndk.so', 'android.hardware.graphics.common-V7-ndk.so'),
    (
        'vendor/etc/media_codecs_canoe_sku1_vendor.xml',
        'vendor/etc/media_codecs_canoe_v2_vendor.xml',
        'vendor/etc/media_codecs_performance_canoe_sku1_vendor.xml',
        'vendor/etc/media_codecs_performance_canoe_sku2_vendor.xml',
        'vendor/etc/media_codecs_performance_canoe_sku3.xml',
        'vendor/etc/media_codecs_performance_canoe_sku3_vendor.xml',
        'vendor/etc/media_codecs_performance_canoe_v1_vendor.xml',
        'vendor/etc/media_codecs_performance_canoe_v2_vendor.xml',
    ): blob_fixup()
        .regex_replace('\\s*<Include href="media_codecs_dolby_audio\\.xml"\\s*/>', '')
        .regex_replace('\\s*<MediaCodec\\b[^>]*(?:name="[^"]*(?:dolby|\\.dv\\.)[^"]*"|type="video/dolby-vision")[^>]*>[\\s\\S]*?</MediaCodec>', ''),
    'vendor/etc/vintf/manifest/c2_manifest_vendor.xml': blob_fixup()
        .regex_replace('\\s*<fqname>IComponentStore/dolby</fqname>', ''),
}  # fmt: skip


module = ExtractUtilsModule(
    'baldur',
    'lenovo',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
)


if __name__ == '__main__':
    common = ExtractUtils.get_module('sm8850-common', module.vendor)
    common.namespace_imports = [f'vendor/lenovo/{module.device}', *common.namespace_imports]
    utils = ExtractUtils(module, [common])
    utils.run()
