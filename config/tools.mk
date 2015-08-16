LOCAL_PATH:= vendor/cm/prebuilt/common
PROP_PATH:= vendor/cm/proprietary

# Google latinime
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    $(LOCAL_PATH)/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so
    
# Copy NovaLauncher
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/NovaLauncher.apk:system/priv-app/NovaLauncher.apk

