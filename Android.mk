LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), spm8667p1_64)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
