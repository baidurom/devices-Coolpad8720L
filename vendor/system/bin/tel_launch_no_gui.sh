#!/system/bin/sh

#file_name="$NVM_ROOT_DIR/COMCfg.csv"
#file_exist=`ls $file_name`
#case "$file_exist" in
#    $file_name)
#    echo "$NVM_ROOT_DIR/COMCfg.csv";
#    ;;
#    *)
#	cat /marvell/tel/configuration/COMCfg.csv > $NVM_ROOT_DIR/COMCfg.csv;
#	cat /marvell/tel/configuration/platform.nvm > $NVM_ROOT_DIR/platform.nvm;
#	cat /marvell/tel/configuration/afcDacTable.nvm > $NVM_ROOT_DIR/afcDacTable.nvm;
#    ;;
#esac

#check NVM partition on eMMC
mk_ext4_fs="/system/bin/make_ext4fs"

nvm_partition="mmcblk0p12"

nvm_partition_dev="/dev/block/$nvm_partition"
nvm_partition_fs="/sys/fs/ext4/$nvm_partition"

case "`cd $nvm_partition_fs; pwd`" in
	"$nvm_partition_fs")
		#already have file system, nothing need to do
		;;
	*)
		#format it as ext4 then mount it
		$mk_ext4_fs $nvm_partition_dev;
		sync;
		mount -o nosuid -o nodev -t ext4 $nvm_partition_dev $NVM_ROOT_DIR;
		;;
esac

#add by liuzichao audio parameter start 13.01.28
file_name="$NVM_ROOT_DIR/audio_flag8720L_1219.nvm"
file_exist=`ls $file_name`
case "$file_exist" in
    $file_name)
	echo "$NVM_ROOT_DIR/audio_flag8720L_1219.nvm";
    ;;
    *)
	rm -rf $NVM_ROOT_DIR/audio*;	
	rm -rf $NVM_ROOT_DIR/AcStatOption.nvm;	
	cat /etc/tel/ttc/audio_flag8720L.nvm > $NVM_ROOT_DIR/audio_flag8720L_1219.nvm;
	cat /etc/tel/ttc/audio_gssp_config.nvm > $NVM_ROOT_DIR/audio_gssp_config.nvm;
  	cat /etc/tel/ttc/audio_HLPF.nvm > $NVM_ROOT_DIR/audio_HLPF.nvm;
  	cat /etc/tel/ttc/audio_misc.nvm > $NVM_ROOT_DIR/audio_misc.nvm;
  	cat /etc/tel/ttc/audio_MSAmain.nvm > $NVM_ROOT_DIR/audio_MSAmain.nvm;
  	cat /etc/tel/ttc/audio_ns.nvm > $NVM_ROOT_DIR/audio_ns.nvm;
  	cat /etc/tel/ttc/audio_eq.nvm > $NVM_ROOT_DIR/audio_eq.nvm;
	cat /etc/tel/ttc/audio_ec.nvm > $NVM_ROOT_DIR/audio_ec.nvm;
	cat /etc/tel/ttc/audio_DualMic.nvm > $NVM_ROOT_DIR/audio_DualMic.nvm;
	cat /etc/tel/ttc/audio_ctm.nvm > $NVM_ROOT_DIR/audio_ctm.nvm;
	cat /etc/tel/ttc/audio_config.nvm > $NVM_ROOT_DIR/audio_config.nvm;
	cat /etc/tel/ttc/audio_avc.nvm > $NVM_ROOT_DIR/audio_avc.nvm;
	
	cat /etc/tel/ttc/COMCfg.csv > $NVM_ROOT_DIR/COMCfg.csv;
	cat /etc/tel/ttc/audio_effect_config.xml > $NVM_ROOT_DIR/audio_effect_config.xml;
	cat /etc/tel/ttc/audio_gain_calibration.xml > $NVM_ROOT_DIR/audio_gain_calibration.xml;
	cat /etc/tel/ttc/audio_swvol_calibration.xml > $NVM_ROOT_DIR/audio_swvol_calibration.xml;
	
	chmod 666 $NVM_ROOT_DIR/*.nvm;
	chmod 666 $NVM_ROOT_DIR/COMCfg.csv;
	chmod 666 $NVM_ROOT_DIR/audio_effect_config.xml;
	chmod 666 $NVM_ROOT_DIR/audio_gain_calibration.xml;
	chmod 666 $NVM_ROOT_DIR/audio_swvol_calibration.xml;
	chown system.system $NVM_ROOT_DIR/*.nvm;
	chown system.system  $NVM_ROOT_DIR/audio_effect_config.xml;
	chown system.system  $NVM_ROOT_DIR/audio_gain_calibration.xml;
	chown system.system  $NVM_ROOT_DIR/audio_swvol_calibration.xml;
	chown system.system $NVM_ROOT_DIR/COMCfg.csv;
	
#copy default calibration xml to /NVM/ if dest not exist.
#src_file="/etc/audio_swvol_calibration_def.xml"
#dst_file="${NVM_ROOT_DIR}/audio_swvol_calibration.xml"
#		if [ -f "${src_file}" ]; then
#			cp ${src_file} ${dst_file}
#			chmod 666 ${dst_file}
#			chown system.system ${dst_file}
#			echo "cp: ${src_file} -> ${dst_file}"
#		fi

#add by liuzichao audio calibration start 13.01.08
#	src_file="/etc/audio_gain_calibration.xml"
#	dst_file="${NVM_ROOT_DIR}/audio_gain_calibration.xml"
#		if [ -f "${src_file}" ]; then
#			cp ${src_file} ${dst_file}
#			chmod 666 ${dst_file}
#			chown system.system ${dst_file}
#			echo "cp: ${src_file} -> ${dst_file}"
#		fi
#	src_file="/etc/audio_effect_config.xml"
#	dst_file="${NVM_ROOT_DIR}/audio_effect_config.xml"
#		if [ -f "${src_file}" ]; then
#			cp ${src_file} ${dst_file}
#			chmod 666 ${dst_file}
#			chown system.system ${dst_file}
#			echo "cp: ${src_file} -> ${dst_file}"
#		fi
#add by liuzichao audio calibration end 13.01.08
	sync;
	sync;
    ;;
esac

if [ -f "${dst_file}" ]; then
	echo "existing ${dst_file}";
else
	if [ -f "${src_file}" ]; then
		cp ${src_file} ${dst_file}
		chmod 666 ${dst_file}
		chown system.system ${dst_file}
		echo "cp: ${src_file} -> ${dst_file}"
	fi
fi
	cat /etc/tel/ttc/AcStatOption.nvm > $NVM_ROOT_DIR/AcStatOption.nvm;
	chmod 666 $NVM_ROOT_DIR/AcStatOption.nvm;
	chown system.system $NVM_ROOT_DIR/AcStatOption.nvm;
	sync;
	sync;

#add by lirui IPV6 issue 2013/10/16
        cat /etc/tel/ttc/TTPCom_NRAM2_APN_PDN_LIST_DATA.gki > $NVM_ROOT_DIR/TTPCom_NRAM2_APN_PDN_LIST_DATA.gki;
	chmod 666 $NVM_ROOT_DIR/TTPCom_NRAM2_APN_PDN_LIST_DATA.gki;
	chown system.system $NVM_ROOT_DIR/TTPCom_NRAM2_APN_PDN_LIST_DATA.gki;
	sync;
	sync;
#end

#add by lirui disable HWCF issue 2014/5/20
        cat /etc/tel/ttc/Hsl_PM_Cfg.nvm > $NVM_ROOT_DIR/Hsl_PM_Cfg.nvm;
	chmod 666 $NVM_ROOT_DIR/Hsl_PM_Cfg.nvm;
	chown system.system $NVM_ROOT_DIR/Hsl_PM_Cfg.nvm;
	sync;
	sync;
#end

#add silent reset 2013/10/16
file_name="$NVM_ROOT_DIR/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki"
file_exist=`ls $file_name`
case "$file_exist" in
    $file_name)
        echo "$NVM_ROOT_DIR/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki";
	;;
	*)
        cat /etc/tel/ttc/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki > $NVM_ROOT_DIR/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki;
	chmod 666 $NVM_ROOT_DIR/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki;
	chown system.system $NVM_ROOT_DIR/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki;
    sync;
    sync;
    ;;
esac
#end

#add silent reset 2013/10/16
file_name="$NVM_ROOT_DIR/EEHandlerConfig_Linux.nvm"
file_exist=`ls $file_name`
case "$file_exist" in
    $file_name)
        echo "$NVM_ROOT_DIR/EEHandlerConfig_Linux.nvm";
	;;
	*)
        cat /etc/tel/ttc/EEHandlerConfig_Linux.nvm > $NVM_ROOT_DIR/EEHandlerConfig_Linux.nvm;
	chmod 666 $NVM_ROOT_DIR/EEHandlerConfig_Linux.nvm;
	chown system.system $NVM_ROOT_DIR/EEHandlerConfig_Linux.nvm;
    sync;
    sync;
    ;;
esac
#end

#add by lirui DipChannel issue 2013/10/16
        cat /etc/tel/ttc/DipChannelChange.nvm > $NVM_ROOT_DIR/DipChannelChange.nvm;
	chmod 666 $NVM_ROOT_DIR/DipChannelChange.nvm;
	chown system.system $NVM_ROOT_DIR/DipChannelChange.nvm;
	sync;
	sync;
#end
setprop sys.telephony.default.loglevel 8
chown system:root /sys/class/power_supply/battery/capacity
chmod 0664 /sys/class/power_supply/battery/capacity

MODULE_DIR=/lib/modules
insmod $MODULE_DIR/msocketk.ko
insmod $MODULE_DIR/cploaddev.ko
#echo 1 > /sys/devices/system/cpu/cpu0/cp
insmod $MODULE_DIR/seh.ko
# load cp and mrd image and release cp
/system/bin/cploader

ret="$?"
case "$ret" in
	    "-1")
		rmmod seh
		rmmod cploaddev
		rmmod msocketk
		exit
       ;;
	    "1")
		rmmod seh
		rmmod cploaddev
		rmmod msocketk
		start nvm-aponly
		start diag-aponly
		insmod $MODULE_DIR/citty.ko
		start atcmdsrv-aponly
		exit
       ;;
       *)
       ;;
esac


insmod $MODULE_DIR/citty.ko
insmod $MODULE_DIR/cci_datastub.ko
insmod $MODULE_DIR/ccinetdev.ko
insmod $MODULE_DIR/gs_modem.ko
insmod $MODULE_DIR/cidatattydev.ko

# $1 src file
# $2 dst file
function copy_if_not_exist()
{
if [ -f "${2}" ]; then
	echo "existing ${2}";
else
	if [ -f "${1}" ]; then
		cp ${1} ${2}
		chmod 666 ${2}
		chown system.system ${2}
		echo "cp: ${1} -> ${2}"
	fi
fi
}

setprop sys.tools.enable 1

sync

/system/bin/eeh -M yes &
/system/bin/nvm &
/system/bin/diag &
/system/bin/atcmdsrv -M yes &
/system/bin/vcm &
