#!/bin/sh

adb root
adb remount
#adb push ../../fprint-libs/libfprint-x64.so /system/lib64/
#adb push ../../fprint-std_libs/fingerprint.default-x64 /system/lib64/hw/fingerprint.default.so
adb push   libs/armeabi/libfprint-x32.so /system/lib/
adb push   libs/armeabi/libfingerprint.default.so /system/lib/hw/fingerprint.default.so
