DEVICE_PACKAGE_OVERLAYS += device/samsung/galaxys2plus-common/overlay

LOCAL_PATH := device/samsung/galaxys2plus-common

# Use high-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.bcm281x5.usb.rc:root/init.bcm281x5.usb.rc \
    $(LOCAL_PATH)/rootdir/init.log.rc:root/init.log.rc \
    $(LOCAL_PATH)/rootdir/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc
	
# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
        device/samsung/galaxys2plus-common/keymaps/bcm_headset.kl:system/usr/keylayout/bcm_headset.kl \
        device/samsung/galaxys2plus-common/keymaps/bcm_keypad_v2.kl:system/usr/keylayout/bcm_keypad_v2.kl \
        device/samsung/galaxys2plus-common/keymaps/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
        device/samsung/galaxys2plus-common/keymaps/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \
        device/samsung/galaxys2plus-common/keymaps/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
        frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
        frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml

PRODUCT_PROPERTY_OVERRIDES += \
     wifi.interface=wlan0 \
     mobiledata.interfaces=rmnet0 \
     ro.telephony.ril_class=SamsungBCMRIL
	 
# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# Charger
PRODUCT_PACKAGES += \
        charger \
        charger_res_images

# Audio
PRODUCT_PACKAGES += \
        audio.a2dp.default

# Device-specific packages
PRODUCT_PACKAGES += \
        SamsungServiceMode \
	S2PlusSettings \
	Torch
