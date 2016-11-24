# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/dell/saltbay/saltbay-vendor.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/dell/saltbay/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800
	
# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.saltbay:root/fstab.saltbay \
    $(LOCAL_PATH)/rootdir/init.avc.rc:root/init.avc.rc \
    $(LOCAL_PATH)/rootdir/init.bt.rc:root/init.bt.rc \
    $(LOCAL_PATH)/rootdir/init.bt.vendor.rc:root/init.bt.vendor.rc \
    $(LOCAL_PATH)/rootdir/init.common.rc:root/init.common.rc \
    $(LOCAL_PATH)/rootdir/init.debug.rc:root/init.debug.rc \
    $(LOCAL_PATH)/rootdir/init.diag.rc:root/init.diag.rc \
    $(LOCAL_PATH)/rootdir/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/rootdir/init.gps.rc:root/init.gps.rc \
    $(LOCAL_PATH)/rootdir/init.intel.feature.asf.rc:root/init.intel.feature.asf.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.platform.usb.7inch.rc:root/init.platform.usb.7inch.rc \
    $(LOCAL_PATH)/rootdir/init.platform.usb.8inch.rc:root/init.platform.usb.8inch.rc \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/init.saltbay.rc:root/init.saltbay.rc \
    $(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/rootdir/init.watchdog.rc:root/init.watchdog.rc \
    $(LOCAL_PATH)/rootdir/init.wifi.rc:root/init.wifi.rc \
    $(LOCAL_PATH)/rootdir/init.wifi.vendor.rc:root/init.wifi.vendor.rc \
    $(LOCAL_PATH)/rootdir/props.board.rc:root/props.board.rc \
    $(LOCAL_PATH)/rootdir/props.platform.rc:root/props.platform.rc \
    $(LOCAL_PATH)/rootdir/props.rc:root/props.rc \
    $(LOCAL_PATH)/rootdir/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/rootdir/ueventd.saltbay.rc:root/ueventd.saltbay.rc

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    lib_driver_cmd_bcmdhd \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

# Audio
PRODUCT_PACKAGES += \
    libtinycompress \
    libtinyalsa \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_COPY_FILES += \
    device/dell/saltbay/audio/asound.conf:system/etc/asound.conf \
    device/dell/saltbay/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/dell/saltbay/audio/route_criteria.conf:system/etc/route_criteria.conf

# Bluetooth
PRODUCT_COPY_FILES += \
    device/dell/saltbay/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf
    device/dell/saltbay/bluetooth/bdroid_buildcfg.h:system/etc/bluetooth/bdroid_buildcfg.h

PRODUCT_PROPERTY_OVERRIDES += \
    bt.hfp.WideBandSpeechEnabled=true

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

ADDITIONAL_DEFAULT_PROPERTIES += ro.sys.powerctl.no.shutdown=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES +=  \
    ro.dalvik.vm.isa.arm=x86 \
    dalvik.vm.implicit_checks=none

# Display
PRODUCT_PACKAGES += \
    pvr_drv_video

PRODUCT_COPY_FILES += \
    device/dell/saltbay/powervr.ini:system/etc/powervr.ini

# GPS
PRODUCT_COPY_FILES += \
    device/dell/saltbay/configs/gps.conf:system/etc/gps.conf \
    device/dell/saltbay/configs/gps.xml:system/etc/gps.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.spid.gps.tty=ttyMFD2

# Houdini (arm native bridge)
PRODUCT_PROPERTY_OVERRIDES +=  \
    ro.enable.native.bridge.exec=1 \

ADDITIONAL_DEFAULT_PROPERTIES += ro.dalvik.vm.native.bridge=libhoudini.so

# Keyhandler
PRODUCT_PACKAGES += \
    CMActions \
    com.cyanogenmod.keyhandler

# Key layout files
PRODUCT_COPY_FILES += \
    device/dell/saltbay/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/dell/saltbay/keylayout/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/dell/saltbay/keylayout/Virtual.kcm:system/usr/keychars/Virtual.kcm\
    device/dell/saltbay/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/dell/saltbay/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/dell/saltbay/keylayout/KEYPAD.kl:system/usr/keylayout/KEYPAD.kl \
    device/dell/saltbay/keylayout/lm49453-audio_Intel_MID_Audio_Jack.kl:system/usr/keylayout/lm49453-audio_Intel_MID_Audio_Jack.kl \
    device/dell/saltbay/keylayout/mrst_keypad.kl:system/usr/keylayout/mrst_keypad.kl
    device/dell/saltbay/keylayout/mxt224_key_0.kl:system/usr/keylayout/mrst_keypad.kl
    device/dell/saltbay/keylayout/qwerty.kl:system/usr/keylayout/mrst_keypad.kl
    device/dell/saltbay/keylayout/Vendor_1bad_Product_f016.kl:system/usr/keylayout/Vendor_1bad_Product_f016.kl
    device/dell/saltbay/keylayout/Vendor_1bad_Product_f023.kl:system/usr/keylayout/Vendor_1bad_Product_f023.kl
    device/dell/saltbay/keylayout/Vendor_1bad_Product_f027.kl:system/usr/keylayout/Vendor_1bad_Product_f027.kl
    device/dell/saltbay/keylayout/Vendor_1bad_Product_f036.kl:system/usr/keylayout/Vendor_1bad_Product_f036.kl
    device/dell/saltbay/keylayout/Vendor_1d79_Product_0009.kl:system/usr/keylayout/Vendor_1d79_Product_0009.kl
    device/dell/saltbay/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl
    device/dell/saltbay/keylayout/Vendor_12bd_Product_d015.kl:system/usr/keylayout/Vendor_12bd_Product_d015.kl
    device/dell/saltbay/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl
    device/dell/saltbay/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl
    device/dell/saltbay/keylayout/Vendor_046d_Product_c21f.kl:system/usr/keylayout/Vendor_046d_Product_c21f.kl
    device/dell/saltbay/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl
    device/dell/saltbay/keylayout/Vendor_046d_Product_c219.kl:system/usr/keylayout/Vendor_046d_Product_c219.kl
    device/dell/saltbay/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl
    device/dell/saltbay/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl
    device/dell/saltbay/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl
    device/dell/saltbay/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl
    device/dell/saltbay/keylayout/Vendor_0079_Product_0011.kl:system/usr/keylayout/Vendor_0079_Product_0011.kl
    device/dell/saltbay/keylayout/Vendor_0583_Product_2060.kl:system/usr/keylayout/Vendor_0583_Product_2060.kl
    device/dell/saltbay/keylayout/Vendor_1038_Product_1412.kl:system/usr/keylayout/Vendor_1038_Product_1412.kl
    device/dell/saltbay/keylayout/Vendor_1689_Product_fd00.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl
    device/dell/saltbay/keylayout/Vendor_1689_Product_fd01.kl:system/usr/keylayout/Vendor_1689_Product_fd00.kl
    device/dell/saltbay/keylayout/Vendor_1689_Product_fe00.kl:system/usr/keylayout/Vendor_1689_Product_fe00.kl
    device/dell/saltbay/keylayout/Vendor_2378_Product_100a.kl:system/usr/keylayout/Vendor_2378_Product_100a.kl

# Lights
PRODUCT_PACKAGES += \
    lights.merrifield

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=en \
    ro.product.locale.region=GB

