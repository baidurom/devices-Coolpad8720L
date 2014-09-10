#!/system/bin/sh

#设置USB设备名(adb device命令输出)
model=`getprop ro.product.model`
sn=`cat /sys/class/mmc_host/mmc0/mmc0:0001/serial`
echo $model-$sn | busybox tr -d " \n" >  /sys/class/android_usb/android0/iSerial


#备份/proc/last_kmsg  到/data/log目录
#dt=`date "+%Y%m%d_%H%M%S"`
#if [ -r /proc/last_kmsg ]; then
    #fname=last_kmsg_${dt}.log
    #cat /proc/last_kmsg > /data/log/$fname
#else
    #fname=last_kmsg_${dt}_no.log
    #echo > /data/log/$fname
#fi


#根据是否存在NFC芯片设置property
nfc_file=/sys/devices/virtual/touchscreen/touchscreen_dev/nfc_type
if [ -r $nfc_file ]; then
    has_nfc=`cat $nfc_file`
    if [ "$has_nfc" != "" ]; then
       setprop ro.yulong.has_nfc "$has_nfc"
    fi
fi

rpflag=`cat /sys/class/android_usb/android0/iRP`
if [ "$rpflag" == "" ]; then
    setprop sys.usb.config mtp,adb
fi

#根据YL分区设定值设置运行模式
comm_mode=`getyl -s  RESERVE1  16 4`
run_mode=`getyl -s  RESERVE1  20 1`

log -p I -t onboot.sh "set comm.runmode=$comm_mode"
if [ x$comm_mode != x ]; then
    setprop persist.yulong.comm.runmode $comm_mode
fi

log -p I -t onboot.sh "set defaultmode=$run_mode"
if [ x$run_mode != x ]; then
    setprop persist.yulong.defaultmode $run_mode
    setprop persist.sys.yulong.defaultmode $run_mode
fi

#add by liangguoyi for fastmmi gps on reboot
chmod 0755 /data/system/gps
chown system:system /data/system/gps
chmod -R 0755 /data/system/gps/*
chown system:system /data/system/gps/*
chown system:system /data/system/gps/mrvlgps/*
chown system:system /data/system/gps/mrvlgps/rxn/*
#end fastmmi gps on reboot

# liangguoyi add for cmcc config
if [ ! -e /data/misc/wifi/wpa_supplicant.conf ];then
    	cp /system/etc/wifi/wpa_supplicant_cmcc.conf /data/misc/wifi/wpa_supplicant.conf
fi
chmod 0660 /data/misc/wifi/wpa_supplicant.conf
chown system:wifi /data/misc/wifi/wpa_supplicant.conf
# liangguoyi end

# add for openning offline log when system boot.
rpTag=`cat /sys/class/android_usb/android0/iRP`
runMode=`getprop persist.yulong.defaultmode`
if [ "${runMode}" = "0" -a -z "${rpTag}" ] ;then
    setprop persist.service.logr.enable 1
    setprop persist.service.logr.path /mnt/sdcard/log
fi

if [ -z "${rpTag}" ] ;then
    setprop persist.yulong.log.level YVV8
fi

# add end 

# add for ADB disconnect after reboot with USB online by chenerlei at 2014.5.13
echo  0 > /sys/class/android_usb/android0/enable
echo  1ebf > /sys/class/android_usb/android0/idVendor
echo  707e > /sys/class/android_usb/android0/idProduct
echo  rndis,adb,marvell_modem,marvell_diag > /sys/class/android_usb/android0/functions
echo  239 > /sys/class/android_usb/android0/bDeviceClass
echo  1 > /sys/class/android_usb/android0/enable	
setprop ctl.start adbd
setprop sys.usb.state mtp,adb
# add end 