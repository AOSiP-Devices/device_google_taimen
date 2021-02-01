# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Inherit some common AOSiP stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

include device/google/wahoo/device-aosip.mk

## Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := google
PRODUCT_NAME := aosip_taimen
PRODUCT_DEVICE := taimen
PRODUCT_MODEL := Pixel 2 XL

# Match stock product info
PRODUCT_OVERRIDE_INFO := true
PRODUCT_OVERRIDE_FINGERPRINT := google/taimen/taimen:11/RP1A.201005.004.A1/6934943:user/release-keys
PRODUCT_OVERRIDE_DESC := taimen-user 11 RP1A.201005.004.A1 6934943 release-keys

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)
