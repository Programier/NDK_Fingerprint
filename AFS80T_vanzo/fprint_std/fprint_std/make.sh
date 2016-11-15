#!/bin/sh

#32bit
cp ./mk/Android-x32.mk ./jni/Android.mk
cp ./mk/Application-x32.mk ./jni/Application.mk
ndk-build -B
cp ./libs/armeabi/libfingerprint.default.so ../lib/std/fingerprint.default-x32.so

#64bit
#cp ./mk/Android-x64.mk ./jni/Android.mk
#cp ./mk/Application-x64.mk ./jni/Application.mk
#ndk-build -B
#cp ./libs/arm64-v8a/libfingerprint.default.so ../lib/std/fingerprint.default-x64.so

