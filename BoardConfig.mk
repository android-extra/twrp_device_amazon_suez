DEVICE := device/amazon/suez
KERNEL := kernel/amazon/suez
VENDOR := vendor/amazon/suez

# Platform
TARGET_BOARD_PLATFORM := mt8173

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := suez

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := suez

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a15

TARGET_CPU_ABI_LIST := arm64-v8a,armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_64_BIT := arm64-v8a
TARGET_CPU_SMP := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2

BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_OFFSET := 0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1100000
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03400000 --second_offset 0x00e80000 --tags_offset 0x07f80000
# original - not enough space for us!
# BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03f80000 --second_offset 0x00e80000 --tags_offset 0x07f80000

TARGET_USERIMAGES_USE_EXT4 := true

#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/zImage
TARGET_KERNEL_SOURCE := kernel/amazon/suez
TARGET_KERNEL_CONFIG := suez_defconfig
TARGET_KERNEL_VARIANT_CONFIG := suez_defconfig

#TARGET_RECOVERY_INITRC := $(DEVICE_PATH)/recovery/root/init.rc
TARGET_RECOVERY_FSTAB := $(DEVICE)/recovery/root/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

RECOVERY_SDCARD_ON_DATA := true

TW_THEME := portrait_hdpi
TW_HACKED_BL_BUTTON := true
#TW_INCLUDE_L_CRYPTO := true
#TARGET_HW_DISK_ENCRYPTION := true
