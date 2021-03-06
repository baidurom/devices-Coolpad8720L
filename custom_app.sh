apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "SystemUI" ];then
	echo ">>> in custom_app for $apkBaseName"
	find $tempSmaliDir -name "*.smali" | xargs sed -i 's/com\/android\/internal\/statusbar\/StatusBarNotification/android\/service\/notification\/StatusBarNotification/g'

        find $tempSmaliDir -name "*.smali" | xargs sed -i 's/Surface;->screenshot/SurfaceControl;->screenshot/g'

elif [ "$apkBaseName" = "Phone" ];then
        echo ">>> in custom_app for $apkBaseName to add some permissions for android 4.3"
	sed -i '/<original-package android:name="com.android.phone" \/>/a\<uses-permission android:name="android.permission.MANAGE_USERS" \/>\n\<uses-permission android:name="android.permission.UPDATE_APP_OPS_STATS" \/>\n\<uses-permission android:name="android.permission.CONNECTIVITY_INTERNAL" \/>' $tempSmaliDir/AndroidManifest.xml

        echo ">>> in custom_app for $apkBaseName to change some permissions for android 4.3"
        sed -i 's#android:name="android.permission.SEND_SMS_NO_CONFIRMATION"#android:name="android.permission.SEND_RESPOND_VIA_MESSAGE"#g' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "Contacts" ];then
        echo ">>> in custom_app for $apkBaseName to remove AlwaysRunningService for android 4.3"
        sed -i '/AlwaysRunningService/d'  $tempSmaliDir/AndroidManifest.xml

        echo ">>> in custom_app for $apkBaseName to change some permissions for android 4.3"
        sed -i 's#android:permission="android.permission.SEND_SMS_NO_CONFIRMATION"#android:permission="android.permission.SEND_RESPOND_VIA_MESSAGE"#g' $tempSmaliDir/AndroidManifest.xml

elif [ "$apkBaseName" = "HomePro" ];then
    echo ">>> in custom_app for $apkBaseName"
    sed -i 's/className="com.baidu.camera.Camera" packageName="com.baidu.camera"/className="com.android.camera.Camera" packageName="com.android.gallery3d"/g' $tempSmaliDir/res/xml-xhdpi/default_workspace.xml

fi

