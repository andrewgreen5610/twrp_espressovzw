USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/espressovzw/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := espressovzw
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
#ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_CONFIG := espresso_vzw_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/espressovzw
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01300000

# Filesystem (cat /proc/emmc)
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072

# Use power button as select in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := "battery"

# chargers
BOARD_CHARGER_RES := device/samsung/espressovzw/charger

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/espressovzw/recovery/recovery_keys.c
TARGET_RECOVERY_FSTAB := device/samsung/espressovzw/recovery.fstab

# TWRP
DEVICE_RESOLUTION := 1024x600
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true