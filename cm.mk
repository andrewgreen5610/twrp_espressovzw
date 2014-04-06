# Release name
PRODUCT_RELEASE_NAME := espressovzw

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/espressovzw/device_espressovzw.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := espressovzw
PRODUCT_NAME := cm_espressovzw
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-i705
PRODUCT_MANUFACTURER := Samsung
