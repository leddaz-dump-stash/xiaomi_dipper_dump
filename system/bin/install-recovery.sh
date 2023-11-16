#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50980174:c6f1f80bfc47dfb6ddfa524220720a2b66842c24; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:46081354:cbf5ab9a583d800046d50e38d1f229ae2dd1430b EMMC:/dev/block/bootdevice/by-name/recovery c6f1f80bfc47dfb6ddfa524220720a2b66842c24 50980174 cbf5ab9a583d800046d50e38d1f229ae2dd1430b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
