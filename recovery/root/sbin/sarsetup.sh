#!/sbin/sh

# The below variables shouldn't need to be changed
# unless you want to call the script something else
SCRIPTNAME="SAR_Setup"
LOGFILE=/tmp/recovery.log

# Set default log level
# 0 Errors only
# 1 Errors and Information
# 2 Errors, Information, and Debugging
__VERBOSE=1

# Function for logging to the recovery log
log_print()
{
	# 0 = Error; 1 = Information; 2 = Debugging
	case $1 in
		0)
			LOG_LEVEL="E"
			;;
		1)
			LOG_LEVEL="I"
			;;
		2)
			LOG_LEVEL="DEBUG"
			;;
		*)
			LOG_LEVEL="UNKNOWN"
			;;
	esac
	if [ $__VERBOSE -ge "$1" ]; then
		echo "$LOG_LEVEL:$SCRIPTNAME::$2" >> "$LOGFILE"
	fi
}

finish()
{
	log_print 1 "SAR setup complete. Continuing TWRP boot."
	exit 0
}

fstab_path="/etc/recovery.fstab"
vendor_path="/dev/block/bootdevice/by-name/vendor"

log_print 2 "Running $SCRIPTNAME script for TWRP..."

if [ -e "$vendor_path" ]; then
	log_print 2 "Vendor partition found! Setting up recovery fstab for vendor..."
	sed -i "/system_image/ a \/vendor		ext4	$vendor_path\n\/vendor_image	emmc	$vendor_path" "$fstab_path"
	finish
else
	log_print 2 "Device uses legacy system setup. No further action required."
	finish
fi
