USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/kyleve/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true

TARGET_BOOTLOADER_BOARD_NAME := hawaii

# PARTITION SIZE
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 907096000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2189426688
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144

# Kernel
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_kyleve_rev00_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/kyleve
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_KERNEL_BASE := 0x82000000
BOARD_KERNEL_PAGESIZE := 4096

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kyleve/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/kyleve/bluetooth/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b1
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true

# SkTextBox for libtvout
BOARD_USES_SKTEXTBOX := true

# Hardware rendering
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_CFG := device/samsung/kyleve/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DCAPRI_HWC -DREFBASE_JB_MR1_COMPAT_SYMBOLS

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/kyleve/ril/

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/kyleve/rootdir/fstab.hawaii_ss_kyleve
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_RECOVERY_DENSITY := hdpi

# opengl
BOARD_USE_BGRA_8888 := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd.kyleve

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/kyleve/cmhw/

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/kyleve/include

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/kyleve/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    service_contexts \
    bkmgrd.te \
    device.te \
    geomagneticd.te \
    gpsd.te \
    init.te \
    immvibed.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_server.te \
    tvserver.te \
    vclmk.te \
