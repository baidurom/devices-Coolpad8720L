echo  "use labtool and mfg "
	cd /system/lib/modules/
	rmmod sd8xxx
	rmmod mlan
	rmmod mbt8xxx
	insmod mlan.ko
	insmod  sd8xxx.ko "mfg_mode=1 drv_mode=1 fw_name=mrvl/SD8777.bin"
	insmod mbt8xxx.ko "multi_fn=0x04"
	rfkill unblock wifi
	cd  /etc/
	cd /etc/labtool
	chmod 777 labtool	
	./labtool 
