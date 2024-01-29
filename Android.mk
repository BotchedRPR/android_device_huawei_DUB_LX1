ifneq ($(filter DUB_LX1,$(TARGET_DEVICE)),)

LOCAL_PATH := device/huawei/DUB_LX1

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
