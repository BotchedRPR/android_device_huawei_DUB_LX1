$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/huawei/DUB_LX1/prebuilt/zImage:kernel

PRODUCT_DEVICE := DUB_LX1
PRODUCT_NAME := omni_DUB_LX1
PRODUCT_BRAND := huawei
PRODUCT_MODEL := Y7 2019
PRODUCT_MANUFACTURER := Huawei

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

