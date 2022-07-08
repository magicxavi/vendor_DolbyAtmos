$(call inherit-product, vendor/DolbyAtmos/common/common-vendor.mk)

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/DolbyAtmos/sepolicy/vendor
    
# Dolby    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.feature.dolby_enable=true \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    persist.vendor.audio_fx.current=dolby

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=16
