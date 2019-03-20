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

BOARD_VENDOR := htc

PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2025-12-01

# TWRP Build Flags
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 178
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := hwservicemanager servicemanager qseecomd keymaster-3-0
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_DEVICE_MODULES := chargeled tzdata hwservicemanager servicemanager android.hidl.base@1.0
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT)/usr/share/zoneinfo/tzdata $(TARGET_OUT)/bin/hwservicemanager $(TARGET_OUT)/bin/servicemanager $(TARGET_OUT)/lib64/android.hidl.base@1.0.so
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true

# TWRP Debug Flags
#TWRP_EVENT_LOGGING := true
#TARGET_USES_LOGD := true
#TWRP_INCLUDE_LOGCAT := true
#TARGET_RECOVERY_DEVICE_MODULES += debuggerd # strace
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd # $(TARGET_OUT_OPTIONAL_EXECUTABLES)/strace
#TARGET_RECOVERY_DEVICE_MODULES += twrpdec
#TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_RECOVERY_ROOT_OUT)/sbin/twrpdec
#TW_CRYPTO_SYSTEM_VOLD_DEBUG := true
