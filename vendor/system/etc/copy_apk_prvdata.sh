#!/system/bin/sh
# backup or restore apk private data.
# writen by Eric Yan at 2012.11.05
# modify by chenerlei at 2012.11.07
# modify by zhuxiaoqiang at 2013.02.27
# Usage: copy_apk_prvdata.sh <0|1>,<1|2|3|4>,pkg_name
#        <0|1> for operation
#        0: backup
#        1: restore
#        <1|2|3|4> for path
#        1 : sdcard/coolpad/apk
#        2 : sdcard/backup/app
#        3 : sdcard/external_sd/coolpad/apk
#        4 : sdcard/external_sd/backup/app
#        pkg_name for the name of package
#        copy_apk_prvdata.sh 0,1,com.sina.weibo
#        copy_apk_prvdata.sh 1,1,com.sina.weibo
#  Output:     
#        yulong.apkbackup.status
#        running/error/finish
#=================================[START]===================================== 
#LOG_NAME="${0}:"
LOG_TAG="YL_APK_BACKUP"

TAR="busybox tar"
PROP_STATUS=yulong.apkbackup.status

# output the log  
logi ()
{
  /system/bin/log -t $LOG_TAG -p i "YLLOG:$@"
}

# check if the arguments are wrong
if [ -z $1 ]
then
    logi "Usage: copy_apk_prvdata.sh <0|1>,<1|2|3|4>,pkg_name"
    exit 1
fi

setprop $PROP_STATUS running

# parse the input arguments 
operate=${1:0:1}
path=${1:2:1}
pkg_name=${1:4}

logi "$1, operate=$operate, pkg_name='$pkg_name',path=$path"

# check the package exist
if [ ! -d "/data/data/$pkg_name" ]; then
    logi "'/data/data/$pkg_name' doesn't exist!"
    setprop $PROP_STATUS error
    exit 1
fi

# decide the place where to backup or restore
if   [ $path = "1" ]; then
    bkdir="/sdcard/coolpad/apk"
elif [ $path = "2" ]; then
    bkdir="/sdcard/backup/app"
elif [ $path = "3" ]; then
    bkdir="$SECONDARY_STORAGE/coolpad/apk"
elif [ $path = "4" ]; then
    bkdir="$SECONDARY_STORAGE/backup/app"
fi

logi "the backup dir = [$bkdir]"

# stop app if running
/system/bin/am force-stop $pkg_name
wait
# get the user name of the app(package)
#user=`ls -ld /data/data/$pkg_name|busybox cut -d' ' -f 2`
userid=`ls -n -ld /data/data/$pkg_name|busybox cut -d' ' -f 2`
logi "The user ID of $pkg_name is [$userid]"

# backup
# cd /data/data/$pkg_name
if [ $operate = "0" ]; then
    # make the directory
    mkdir -p $bkdir &>/dev/null
    # file sync
    busybox usleep 100000
    # backup the apk data except lib subdir
    $TAR -czv -f $bkdir/$pkg_name.tar --exclude=data/data/$pkg_name/lib* /data/data/$pkg_name
    ret=$?
    logi "$TAR -czv -f $bkdir/$pkg_name.tar --exclude=data/data/$pkg_name/lib* /data/data/$pkg_name"
    logi "backup result:$ret"
elif [ $operate = "1" ]; then
    # check if the tar file exist 
    if [ ! -s "$bkdir/$pkg_name.tar" ]; then
        logi "$bkdir/$pkg_name.tar does not exist!"
        setprop $PROP_STATUS error
        exit 1
    fi
    # restore the tar file
    $TAR -xzvf $bkdir/$pkg_name.tar -C /
    ret=$?
    logi "$TAR -xzvf $bkdir/$pkg_name.tar -C /"
    logi "restore result:$ret"
    # chown every file if need
    chown $userid:$userid /data/data/$pkg_name
    ls -a /data/data/$pkg_name | while read file1
    do  
        if [ "${file1}" != "lib" ]; then      
            busybox chown -R $userid.$userid /data/data/$pkg_name/${file1}
            #logi "chown $userid.$userid /data/data/$pkg_name/${file1}"                
        fi         
    done
fi

# tell the backup apk we finish
setprop $PROP_STATUS finish

exit 0
#===================================[END]=====================================