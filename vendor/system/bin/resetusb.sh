#!/system/bin/sh

#vibrate for notify
#echo 5000 > /sys/devices/virtual/timed_output/vibrator/enable

c=`getprop sys.usb.config`
if [ "$c" = "ptp,adb" ]; then
   setprop sys.usb.config mtp,adb
else
   setprop sys.usb.config ptp,adb
fi

