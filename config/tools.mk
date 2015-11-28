LOCAL_PATH:= vendor/cm/prebuilt/common
PROP_PATH:= vendor/cm/proprietary

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/05mountext:system/etc/init.d/05mountext \
    $(LOCAL_PATH)/etc/init.d/10apps2sd-redux:system/etc/init.d/10apps2sd \
    $(LOCAL_PATH)/etc/init.d/20extgapps:system/etc/init.d/20extgapps

# Apps2sd files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/a2sd:system/bin/a2sd \
    $(LOCAL_PATH)/bin/sysinit:system/bin/sysinit \
    $(LOCAL_PATH)/bin/fix_permissions:system/bin/fix_permissions \
    $(LOCAL_PATH)/xbin/zipalign:system/xbin/zipalign

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/compcache:system/bin/compcache \
    $(LOCAL_PATH)/bin/handle_compcache:system/bin/handle_compcache

# Google latinime
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    $(LOCAL_PATH)/lib/libjni_unbundled_latinimegoogle.so:system/lib/libjni_unbundled_latinimegoogle.so

# Slim's prebuilt Latinime
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/LatinIME.apk:system/app/LatinIME.apk

# Terminal Emulator
#PRODUCT_COPY_FILES +=  \
#    $(PROP_PATH)/Term.apk:system/app/Term.apk \
#    $(PROP_PATH)/lib/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so
    
# Copy NovaLauncher
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/NovaLauncher.apk:system/priv-app/NovaLauncher.apk

# Copy Lowsoundfixer (thanks tytung)
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/LowSoundFixer_v1.0.8.apk:system/app/LowSoundFixer.apk

# KernelTweaker
PRODUCT_PACKAGES += \
    KernelTweaker
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/KernelTweaker.apk:system/priv-app/KernelTweaker.apk

