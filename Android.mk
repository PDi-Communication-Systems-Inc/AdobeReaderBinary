
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SDK_VERSION := current
LOCAL_CERTIFICATE := shared

# Module name should match apk name to be installed.
#LOCAL_MODULE := com.adobe.reader_10.6.1
LOCAL_MODULE := AdobeReader
LOCAL_REQUIRED_MODULES := libAdobeReader.so
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE :=  libAdobeReader.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH  := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := lib/armeabi-v7a/$(LOCAL_MODULE)

include $(BUILD_PREBUILT)


