#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

import os
from functools import partial
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

from extract_utils.utils import import_module

helpers = import_module(
    'lenovo_extract_helpers',
    str((Path(__file__).resolve().parent.parent / 'sm8850-common') / 'extract_helpers.py'),
)
write_elf_data_modules = helpers.write_elf_data_modules

namespace_imports = [
    'device/lenovo/baldur',
    'device/lenovo/sm8850-common',
    'hardware/qcom-caf/sm8850',
    'hardware/qcom-caf/wlan',
    'hardware/qcom-caf/wlan/qcwcn',
    'vendor/lenovo/sm8850-common',
    'vendor/qcom/opensource/commonsys/display',
    'vendor/qcom/opensource/commonsys-intf/display',
    'vendor/qcom/opensource/dataservices',
]

lib_fixups: lib_fixups_user_type = {
    **lib_fixups,
}

# Device blob fixups
blob_fixups: blob_fixups_user_type = {
    **helpers.device_blob_fixups(),
    (
        'vendor/lib64/c2.dolby.hevc.dec.so',
        'vendor/lib64/c2.dolby.hevc.sec.dec.so',
    ): blob_fixup()
        .add_needed('libcodec2_shim.so'),
}  # fmt: skip


module = ExtractUtilsModule(
    'baldur',
    'lenovo',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
)


# ELF data modules
for proprietary_file in module.proprietary_files:
    proprietary_file.add_pre_makefile_generation_fn(
        partial(
            write_elf_data_modules, proprietary_file,
            device=module.device, owner=module.vendor,
        )
    )


if __name__ == '__main__':
    os.environ['LENOVO_ACTIVE_DEVICE'] = 'baldur'
    utils = ExtractUtils.device_with_common(
        module, 'sm8850-common', module.vendor
    )
    utils.run()
