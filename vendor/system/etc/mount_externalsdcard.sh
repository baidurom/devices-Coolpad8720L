#mount external_sdcard for fastmmimode

mount -t vfat /dev/block/mmcblk1p1 /storage/external
mount -t vfat /dev/block/mmcblk1 /storage/external