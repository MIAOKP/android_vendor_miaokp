# Inherit AOSP device configuration for mione_plus
$(call inherit-product, device/xiaomi/mione_plus/full_mione_plus.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Release name
PRODUCT_RELEASE_NAME := mione_plus

TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

include frameworks/base/data/sounds/AllAudio.mk


PRODUCT_PACKAGES += \
    CMFileManager\
    OmniSwitch


# Setup device specific product configuration.
PRODUCT_DEVICE := mione_plus
PRODUCT_NAME := aokp_mione_plus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI-ONE Plus
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := phone

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=mione_plus \
	BUILD_FINGERPRINT="Xiaomi/mione_plus/mione_plus:4.1.2/JZO54K/QDS84:userdebug/test-keys" \
	PRIVATE_BUILD_DESC="mione_plus-userdebug 4.1.2 JZO54K QDS84 test-keys"

# boot animation
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_480_854.zip:system/media/bootanimation-alt.zip
