#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15060992 3c8d10a69dc86fc1d95fe61bb70bd8ff8b34b23a 12576768 ba6c8afd057256791e3eca691f572116b808f019
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15060992:3c8d10a69dc86fc1d95fe61bb70bd8ff8b34b23a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12576768:ba6c8afd057256791e3eca691f572116b808f019 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 3c8d10a69dc86fc1d95fe61bb70bd8ff8b34b23a 15060992 ba6c8afd057256791e3eca691f572116b808f019:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
