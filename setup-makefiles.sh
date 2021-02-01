#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=taimen
VENDOR=google

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

AOSIP_ROOT="${MY_DIR}/../../.."

HELPER="${AOSIP_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${AOSIP_ROOT}"

# Warning headers and guards
write_headers

write_makefiles "${MY_DIR}/device-proprietary-files.txt" true
write_makefiles "${MY_DIR}/device-proprietary-files-vendor.txt" true

# Finish
write_footers
