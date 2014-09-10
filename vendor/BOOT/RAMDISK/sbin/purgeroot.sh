#!/system/bin/sh

BUSYBOX="busybox"

exempt="
/system/bin/diag_mdlog
/system/bin/netcfg
/system/bin/ping
/system/bin/pppd-ril
/system/bin/run-as
/system/xbin/sv
"

logw()
{
  /system/bin/log -p w -t "PURGE" "$@"
}

csrf=$(getprop ro.yulong.csroot)
if [ "$csrf" = "1" ]
then
  logw "csrf: $csrf"
  exit 0
fi

mount -o rw,remount /system

suapk=`ls /system/app | $BUSYBOX grep -i "superuser\|kinguser.apk"`
if [ $? = 0 ]
then
  logw " rm: $suapk"
  $BUSYBOX chattr -i /system/app/$suapk 2>/dev/null
  $BUSYBOX rm -f /system/app/$suapk
fi

$BUSYBOX find /system -perm -4000 -o -perm -2000 2>/dev/null | \
  while read line
  do
    logw "got: $line"
    echo $exempt | $BUSYBOX grep $line &>/dev/null
    if [ $? != 0 ]
    then
      logw " rm $line."
      $BUSYBOX chattr -i $line
      $BUSYBOX rm -f $line
    fi
  done
  
mount -o ro,remount /system
