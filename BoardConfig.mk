# HTC U11 Device variant information - provided by Kisakuku and posted in 5m4r7ph0n36uru's XDA thread: https://goo.gl/8xvVuO
#
# Asia / EMEA (Single SIM for carriers and HTC direct sales)
# Device ID: htc_ocnuhl
# MID: 2PZC10000
# CID: HTC__001, HTC__M27, HTC__002, HTC__034, HTC__J15, HTC__A07, ORANG001, VODAP001, H3G__003
#
# Japan (Single SIM)
# Device ID: htc_ocnuhljapan
# MID: 2PZC20000
# CID: SBM__802
#
# Asia / EMEA (Dual SIM for HTC direct sales)
# Device ID: htc_ocndugl
# MID: 2PZC30000
# CID: HTC__001, HTC__M27, HTC__002, HTC__034, HTC__J15, HTC__A07, HTC__621, HTC__060
#
# China (Dual SIM)
# Device ID: htc_ocndtwl
# MID: 2PZC40000
# CID: HTCCN701
#
# North America (Single SIM US Unlocked, Sprint)
# Device ID: htc_ocnwhl
# MID: 2PZC50000
# CID: BS_US001, SPCS_001
#
# config.mk
#
# Product-specific compile-time definitions
#

# Board
BOARD_VENDOR := htc
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOOTLOADER_BOARD_NAME := $(shell echo $(TARGET_BOARD_PLATFORM) | tr  '[:lower:]' '[:upper:]')

# Default device path
LOCAL_PATH := device/$(BOARD_VENDOR)/$(TARGET_DEVICE)

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := $(TARGET_CPU_VARIANT)

# Bootloader
TARGET_NO_BOOTLOADER := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4269801472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58476986368
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# Kernel
BOARD_KERNEL_CMDLINE     := \
    androidboot.configfs=true \
    androidboot.console=ttyMSM0 \
    androidboot.hardware=htc_ocn \
    androidboot.selinux=permissive \
    androidboot.usbcontroller=a800000.dwc3 \
    androidkey.dummy=1 \
    console=ttyMSM0,115200,n8 \
    ehci-hcd.park=3 \
    lpm_levels.sleep_disabled=1 \
    sched_enable_hmp=1 \
    sched_enable_power_aware=1 \
    service_locator.enable=1 \
    swiotlb=2048 \
    user_debug=31 \
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_IMAGE_NAME  := Image.lz4-dtb
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_MKBOOTIMG_ARGS     := \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x01000000 \
    --second_offset 0x00f00000 \
    --tags_offset 0x00000100 \
    --board recovery:0
TARGET_PREBUILT_KERNEL   := $(LOCAL_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)

# Enable HW based full disk encryption
TARGET_HW_DISK_ENCRYPTION := true
BOARD_USES_QCOM_DECRYPTION := true

# Custom Platform Version and Security Patch
# TWRP Defaults
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31

# TWRP Build Flags
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 178
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_RESETPROP := true
TW_CRYPTO_USE_SYSTEM_VOLD := \
    hwservicemanager \
    keymaster-3-0 \
    qseecomd \
    servicemanager
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.fingerprint"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_DEVICE_MODULES := android.hidl.base@1.0
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT)/lib64/android.hidl.base@1.0.so
#TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# TWRP Debug Flags
#TWRP_EVENT_LOGGING := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES += debuggerd
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd
#TARGET_RECOVERY_DEVICE_MODULES += strace
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_OPTIONAL_EXECUTABLES)/strace
#TARGET_RECOVERY_DEVICE_MODULES += twrpdec
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_RECOVERY_ROOT_OUT)/sbin/twrpdec
#TW_CRYPTO_SYSTEM_VOLD_DEBUG := true

# Vendor Init
TARGET_INIT_VENDOR_LIB := libinit_$(TARGET_DEVICE)
