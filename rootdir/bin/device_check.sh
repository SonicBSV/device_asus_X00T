#!/sbin/sh
#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Check if device supports NFC
if grep -q -w NFC /dev/block/platform/soc/c0c4000.sdhci/by-name/version; then
    echo "Device supports NFC"
else
    echo "Device doesn't support NFC , removing ..."
    # Remove NFC
    rm -rf /system/system/product/app/*Nfc*
    rm -rf /system/system/product/etc/permissions/*nfc*
    rm -rf /system/system/product/framework/*nfc*
    rm -rf /system/system/product/lib/*nfc*
    rm -rf /system/system/product/lib64/*nfc*
    rm -rf /system/system/product/priv-app/Tag
    rm -rf /system/system/system_ext/app/*Nfc*
    rm -rf /system/system/system_ext/etc/permissions/*nfc*
    rm -rf /system/system/system_ext/framework/*nfc*
    rm -rf /system/system/system_ext/lib/*nfc*
    rm -rf /system/system/system_ext/lib64/*nfc*
    rm -rf /system/system/system_ext/priv-app/Tag
    rm -rf /system/system/app/*Nfc*
    rm -rf /system/system/etc/permissions/*nfc*
    rm -rf /system/system/framework/*nfc*
    rm -rf /system/system/lib/*nfc*
    rm -rf /system/system/lib64/*nfc*
    rm -rf /system/system/priv-app/Tag
    rm -rf /vendor/app/SmartcardService
    rm -rf /vendor/bin/*nfc*
    rm -rf /vendor/bin/hw/*nfc*
    rm -rf /vendor/etc/*nfc*
    rm -rf /vendor/etc/init/*nfc*
    rm -rf /vendor/etc/permissions/*nfc*
    rm -rf /vendor/lib/libpn553_fw.so
    rm -rf /vendor/lib/*nfc*
    rm -rf /vendor/lib/hw/*nfc*
    rm -rf /vendor/lib64/*nfc*
    rm -rf /vendor/lib64/hw/*nfc*
    rm -rf /vendor/bin/hw/android.hardware.nfc@1.2-service
fi

# Delete Goodix FP data on clean flash
if [ ! -f /data/system/users/0/settings_fingerprint.xml ]; then
    rm -rf /persist/data/finger_*
fi
