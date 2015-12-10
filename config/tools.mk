LOCAL_PATH:= vendor/cm/prebuilt/common
PROP_PATH:= vendor/cm/prebuilt

# Utilize init.d scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/init.d/05mountext:system/etc/init.d/05mountext \
    $(LOCAL_PATH)/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    $(LOCAL_PATH)/etc/init.d/20extgapps:system/etc/init.d/20extgapps

# Additional files for HTC BRAVO
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/a2sd:system/bin/a2sd \
    $(LOCAL_PATH)/bin/compcache:system/bin/compcache \
    $(LOCAL_PATH)/bin/handle_compcache:system/bin/handle_compcache

# Google latinime
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Slim's prebuilt Latinime
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/LatinIME.apk:system/app/LatinIME.apk
    
# Copy NovaLauncher
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/NovaLauncher.apk:system/priv-app/NovaLauncher.apk

# Copy Lowsoundfixer (thanks tytung)
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/LowSoundFixer_v1.0.8.apk:system/app/LowSoundFixer.apk

# Terminal Emulator
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/Term.apk:system/app/Term.apk \
    $(LOCAL_PATH)/lib/libjackpal-androidterm5.so:system/lib/libjackpal-androidterm5.so \
    $(LOCAL_PATH)/lib/libjackpal-termexec2.so:system/lib/libjackpal-termexec2.so

# Copy my shrinked LockClock.apk
PRODUCT_COPY_FILES += \
    $(PROP_PATH)/LockClock.apk:system/app/LockClock.apk

