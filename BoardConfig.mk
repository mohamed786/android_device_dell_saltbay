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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Board
TARGET_ARCH 			:= x86
TARGET_ARCH_VARIANT 		:= x86
TARGET_CPU_VARIANT 		:= x86
TARGET_CPU_ABI 			:= x86
TARGET_CPU_ABI2 		:= armeabi-v7a
TARGET_CPU_ABI_LIST 		:= x86,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT 	:= x86,armeabi-v7a,armeabi
TARGET_CPU_SMP 			:= true
TARGET_KERNEL_CROSS_COMPILE_PREFIX := x86_64-linux-android
TARGET_BOARD_PLATFORM 		:= merrifield
TARGET_BOOTLOADER_BOARD_NAME 	:= saltbay
TARGET_USERIMAGES_USE_EXT4 	:= true
TARGET_USERIMAGES_USE_F2FS 	:= true

# Kernel CMDLINE
BOARD_KERNEL_CMDLINE         := init=/init pci=noearly console=logk0 console=ttyS0 earlyprintk=nologger code_bytes=128 loglevel=8 vmalloc=256M androidboot.hardware=saltbay androidboot.spid=xxxx:xxxx:xxxx:xxxx:xxxx:xxxx androidboot.serialno=01234567890123456789012345678901 snd_pcm.maximum_substreams=8 ptrace.ptrace_can_access=1 nmi_watchdog=panic softlockup_panic=1 ip=50.0.0.2:50.0.0.1::255.255.255.0::usb0:on
# Kernel 
BOARD_KERNEL_PAGESIZE        := 4096
TARGET_KERNEL_CONFIG	     := x86_64_mrfl_defconfig
TARGET_KERNEL_SOURCE         := kernel/dell/saltbay

TARGET_SPECIFIC_HEADER_PATH := device/dell/saltbay/include

TARGET_DROIDBOOT_LIBS := libintel_droidboot

# Adb
BOARD_FUNCTIONFS_HAS_SS_COUNT := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true

# Binder API version
TARGET_USES_64_BIT_BINDER := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/dell/saltbay/bluetooth

# Assert
TARGET_OTA_ASSERT_DEVICE := saltbay,Venue7 3740 LTE

# Recovery
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_MMCUTILS := true
TARGET_RECOVERY_FSTAB := device/dell/saltbay/rootdir/fstab.saltbay

# Partition sizes
TARGET_USERIMAGES_USE_EXT4 		:= true
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 4194304
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 4194304
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 11674827776
BOARD_CACHEIMAGE_PARTITION_SIZE 	:= 1610612736
# zRAM size
BOARD_ZRAM_SIZE				:= 268435456

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Camera
INTEL_USE_CAMERA_UVC := true
INTEL_VIDEO_XPROC_SHARING := true

# Hardware
BOARD_HARDWARE_CLASS := device/dell/saltbay/cmhw

# Healthd
BOARD_HAL_STATIC_LIBRARIES += libhealthd

# Houdini: enable ARM codegen for x86
BUILD_ARM_FOR_X86 := true

# IMG graphics
BOARD_GFX_REV := RGX6400
ENABLE_IMG_GRAPHICS := true
ENABLE_MRFL_GRAPHICS := true
INTEL_HWC_MOOREFIELD := true
HWUI_IMG_FBO_CACHE_OPTIM := true
TARGET_INTEL_HWCOMPOSER_FORCE_ONLY_ONE_RGB_LAYER := true

# IMG Graphics: System's VSYNC phase offsets in nanoseconds
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

BOARD_EGL_CFG := device/dell/saltbay/configs/egl.cfg

INTEL_VA := true
BUILD_WITH_FULL_STAGEFRIGHT := true
BOARD_USES_VIDEO := true

# enabled to carry out all drawing operations performed on a View's canvas with GPU for 2D rendering pipeline.
USE_OPENGL_RENDERER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
BOARD_USES_WRS_OMXIL_CORE := true
BOARD_USES_MRST_OMX := true
USE_HW_VP8 := true

# Media: DRM Protected Video
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1
USE_INTEL_SECURE_AVC := true

# Settings for the Media SDK library and plug-ins:
# - USE_MEDIASDK: use Media SDK support or not
# - MFX_IPP: sets IPP library optimization to use
USE_MEDIASDK := true
MFX_IPP := p8

# Video Post Processing
TARGET_HAS_ISV := true
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.intel.isv.vpp = 1 \
    persist.intel.isv.frc = 1

COMMON_GLOBAL_CFLAGS += -DGFX_BUF_EXT

#Twrp 
DEVICE_RESOLUTION := 1280x800
TARGET_RECOVERY_FSTAB := device/dell/saltbay/rootdir/twrp.fstab
RECOVERY_SDCARD_ON_DATA := true
TW_EVENT_LOGGING := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_ALWAYS_RMRF := true
TW_FLASH_FROM_STORAGE := true
TW_NO_CPU_TEMP	:=true
TW_NO_BATT_PERCENT := true 
TW_THEME := landscape_hdpi

# Use the non-open-source parts, if they're present
-include vendor/dell/saltbay/BoardConfigVendor.mk
