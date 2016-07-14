#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "SystemUI" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'   

elif [ "$apkBaseName" = "Settings" ];then 
 		echo ">>> in custom_app for $apkBaseName to add my Information in Setting/AboutPhone" 
 	sed -i '3a\    <Preference android:title="ROMer" android:summary="Art_Chen" style="?android:preferenceInformationStyle" />'  $tempSmaliDir/res/xml/device_info_settings.xml 

fi
