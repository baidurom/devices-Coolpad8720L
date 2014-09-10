#!/system/bin/sh

#move NVM_ROOT_DIR to init.rc so other applications and services also use it.
#export  NVM_ROOT_DIR="/data/Linux/Marvell/NVM"

#add by liuzichao audio parameter start 13.01.08
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
#	src_file="/etc/audio_swvol_calibration_def.xml"
#	dst_file="${NVM_ROOT_DIR}/audio_swvol_calibration.xml"
#	if [ -f "${src_file}" ]; then
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

#add by liuzichao audio parameter end 13.01.08
setprop marvell.ril.ppp.enabled 0
setprop log.tag.Mms:transaction V
setprop log.tag.Mms:app V
setprop log.tag.Mms:threadcache V
setprop sys.usb.diagmodem 1
#add by [YL14441] for Marvell patch PDP activate optimization
setprop ro.gsm.data_retry_config 0,1000,2000,3000,4000,5000,10000,20000,40000,80000,160000,320000,640000,1280000,1800000
#add end by [YL14441] for Marvell patch PDP activate optimization
	
#copy default calibration xml to /NVM/ if dest not exist.
src_file="/etc/audio_swvol_calibration_def.xml"
dst_file="${NVM_ROOT_DIR}/audio_swvol_calibration.xml"

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
end

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
	chmod 666 $NVM_ROOT_DIR/DipChannelChange.nvm
	chown system.system $NVM_ROOT_DIR/DipChannelChange.nvm
	sync;
	sync;
#end

#backup log files
/system/bin/backup_log.sh


/system/bin/run_composite.sh;

