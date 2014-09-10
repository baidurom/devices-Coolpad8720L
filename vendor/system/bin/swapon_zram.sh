#!/system/bin/sh
#activate ksm and set parameter
echo '500' > /sys/kernel/mm/ksm/sleep_millisecs
echo '100' > /sys/kernel/mm/ksm/pages_to_scan
echo '1' > /sys/kernel/mm/ksm/run

echo '1' > /sys/block/zram0/reset
echo $((128*1024*1024)) > /sys/block/zram0/disksize
cat /sys/block/zram0/disksize

busybox mkswap /dev/block/zram0
busybox sysctl -w vm.swappiness=10
busybox swapon /dev/block/zram0
