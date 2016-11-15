######################### fprint-x32 #########################
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := fprint
#LOCAL_SRC_FILES := ../../../cjni80_v3.0/libs/armeabi/libfprint-x32.so
LOCAL_SRC_FILES := ../../../fprint-libs/libfprint-x32.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_CFLAGS := -fno-stack-protector
LOCAL_SRC_FILES := fingerprint.c \
	ma_fprint.c
	
LOCAL_ARM_MODE := arm	
LOCAL_MODULE := fingerprint.default
LOCAL_SHARED_LIBRARIES := fprint liblog
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)  


