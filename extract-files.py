#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from pathlib import Path
import re

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

def enable_ull_scan_requests(ctx, file, file_path, **kwargs):
    path = Path(file_path)
    data = path.read_bytes()
    lines = data.splitlines(keepends=True)
    ends = [i for i, line in enumerate(lines) if line.rstrip(b'\r\n') == b'END']
    if len(ends) != 1 or re.search(rb'(?m)^\s*wlm_latency_flags_ultralow\s*=', data):
        raise ValueError(f'{file.dst}: expected one END and no ULL latency assignment')

    newline = b'\r\n' if lines[ends[0]].endswith(b'\r\n') else b'\n'
    lines.insert(ends[0], b'wlm_latency_flags_ultralow=0x180c82' + newline)
    path.write_bytes(b''.join(lines))


blob_fixups: blob_fixups_user_type = {
    (
        'vendor/lib64/soundfx/libquasar.so',
        'vendor/lib64/camera/components/com.qti.node.fd.so',
        'vendor/lib64/hw/camera.qcom.core.so',
        'vendor/lib64/libcamerapoweroptfeature.so',
    ): blob_fixup()
        .replace_needed('libtinyxml2.so', 'libtinyxml2-v36.so'),
    'vendor/lib64/camera/components/com.qti.node.dewarp.so': blob_fixup()
        .replace_needed('android.hardware.graphics.allocator-V1-ndk.so', 'android.hardware.graphics.allocator-V2-ndk.so'),
    (
        'vendor/lib64/c2.dolby.vision.dec.so',
        'vendor/lib64/c2.dolby.vision.sec.dec.so',
    ): blob_fixup()
        .add_needed('libcodec2_shim.so'),
    'vendor/lib64/soundfx/libswgamedapaidl.so': blob_fixup()
        .replace_needed('android.hardware.audio.effect-V3-ndk.so', 'android.hardware.audio.effect-V4-ndk.so')
        .replace_needed('android.media.audio.common.types-V4-ndk.so', 'android.media.audio.common.types-V5-ndk.so'),
    'vendor/etc/wifi/peach_v2/WCNSS_qcom_cfg.ini': blob_fixup()
        .call(enable_ull_scan_requests, need_tmp_dir=False),
    'vendor/bin/init.qti.kernel.early_debug.sh': blob_fixup()
        .regex_replace(r'Copyright \(c\) Qualcomm Technologies, Inc\. and/or its subsidiaries\.', 'Copyright (c) 2024-2025 Qualcomm Technologies, Inc.'),
    'vendor/lib64/liboffscreenpoweroptfeature.so': blob_fixup()
        .replace_needed('libtinyxml2.so', 'libtinyxml2-v36.so'),
    'vendor/lib64/libpsmoptfeature.so': blob_fixup()
        .replace_needed('libtinyxml2.so', 'libtinyxml2-v36.so'),
    'vendor/lib64/libvideooptfeature.so': blob_fixup()
        .replace_needed('libtinyxml2.so', 'libtinyxml2-v36.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'baldur',
    'lenovo',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
    add_firmware_proprietary_file=True,
)


shared_module = ExtractUtils.get_module('sm8850-common', module.vendor)
module.blob_fixups = {**shared_module.blob_fixups, **module.blob_fixups}
module.lib_fixups = {**shared_module.lib_fixups, **module.lib_fixups}


if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(module, 'sm8850-common', module.vendor)
    utils.run()
