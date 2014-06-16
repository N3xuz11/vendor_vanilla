# Inherit AOSP device configuration for hammerhead
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/vanilla/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/vanilla/configs/gsm.mk)

# Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/vanilla/overlay/hammerhead

# Setup device specific product configuration
PRODUCT_NAME := vu_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT="google/hammerhead/hammerhead:4.4.3/KTU84M/1158763:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 4.4.3 KTU84M 1158763 release-keys"

PRODUCT_COPY_FILES += \
    vendor/vanilla/prebuilt/bootanimation/bootanimation_720_720.zip:system/media/bootanimation-alt.zip
