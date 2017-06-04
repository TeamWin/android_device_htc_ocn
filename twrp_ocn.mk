# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

$(call inherit-product, device/htc/ocn/aosp_ocn.mk)
$(call inherit-product-if-exists, device/htc/ocn/omni_ocn.mk)

#PRODUCT_NAME := twrp_ocn
#PRODUCT_DEVICE := ocn
#PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC U11
PRODUCT_MANUFACTURER := HTC
