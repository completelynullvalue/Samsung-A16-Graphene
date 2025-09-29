#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):83886080:45a95fcf462a759d2ccb77ed8966f0ff1448010f; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):67108864:b409f3f62ba1e19c7b4bb07c45cd55b2f4023f09 \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):83886080:45a95fcf462a759d2ccb77ed8966f0ff1448010f && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

