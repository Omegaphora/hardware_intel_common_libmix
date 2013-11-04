LOCAL_PATH := $(call my-dir)

ifeq ($(INTEL_VA),true)

include $(CLEAR_VARS)
VENDORS_INTEL_MRST_LIBMIX_ROOT := $(LOCAL_PATH)
include $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/mixvbp/Android.mk
include $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/asfparser/Android.mk
include $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/videodecoder/Android.mk
include $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/videoencoder/Android.mk
include $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/imagedecoder/Android.mk
ifneq ($(TARGET_BOARD_PLATFORM),baytrail)
include $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/imageencoder/Android.mk
endif
ifeq ($(ENABLE_IMG_GRAPHICS),)
include $(VENDORS_INTEL_MRST_LIBMIX_ROOT)/videovpp/Android.mk
endif
endif
