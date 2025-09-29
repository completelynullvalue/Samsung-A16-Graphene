#
# Samsung A16 Vendor Prebuilts for GrapheneOS GSI
# Minimal mapping to avoid fsgen missing file errors
#

LOCAL_PATH := $(call my-dir)

# =======================
# Vendor binaries and libraries
# =======================
# ELF binaries and libraries are now handled by Android.bp prebuilt modules
# Only non-ELF files remain in PRODUCT_COPY_FILES

# =======================
# Vendor configuration files
# =======================
# These files are now handled by Android.bp prebuilt_etc modules
# PRODUCT_COPY_FILES += \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/audio_policy_configuration.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/bluetooth_audio_policy_configuration.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/media_codecs.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/media_codecs.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/media_profiles_V1_0.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/ueventd.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/ueventd.rc \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/fstab.mt6789:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/fstab.mt6789 \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/public.libraries.txt:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/public.libraries.txt \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/cgroups.json:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/cgroups.json

# =======================
# Vendor init files
# =======================
# These files are now handled by Android.bp prebuilt_etc modules
# PRODUCT_COPY_FILES += \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/init/android.hardware.audio.service.mediatek.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/init/android.hardware.audio.service.mediatek.rc \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/init/android.hardware.bluetooth@1.1-service-mediatek.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/init/android.hardware.bluetooth@1.1-service-mediatek.rc \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/init/init.nfc.samsung.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/init/init.nfc.samsung.rc \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/init/face-default-sec.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/init/face-default-sec.rc \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/init/hyper-default-sec.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/init/hyper-default-sec.rc \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/init/lights-default-sec.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/init/lights-default-sec.rc \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/init/teegris_v4.rc:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/init/teegris_v4.rc

# =======================
# Vendor permissions
# =======================
# These files are now handled by Android.bp prebuilt_etc modules
# PRODUCT_COPY_FILES += \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/permissions/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/permissions/android.software.ipsec_tunnels.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/permissions/samsung.software.secure_key_service.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/permissions/samsung.software.secure_key_service.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/permissions/vendor.samsung.hardware.telephony.cdma_excluded.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/permissions/vendor.samsung.hardware.telephony.cdma_excluded.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/permissions/vendor.samsung.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/permissions/vendor.samsung.hardware.telephony.gsm.xml \
#     device/grapheneos/gsi_clean/prebuilt/vendor/etc/permissions/vendor.samsung.hardware.telephony.satellite.xml:$(TARGET_COPY_OUT_SYSTEM)/vendor/etc/permissions/vendor.samsung.hardware.telephony.satellite.xml

# =======================
# TEE and APEX files (if present)
# =======================
ifneq ($(wildcard device/grapheneos/gsi_clean/prebuilt/vendor/tee),)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/grapheneos/gsi_clean/prebuilt/vendor/tee,vendor/tee)
endif

ifneq ($(wildcard device/grapheneos/gsi_clean/prebuilt/vendor/apex),)
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/grapheneos/gsi_clean/prebuilt/vendor/apex,vendor/apex)
endif

# =======================
# Vendor properties
# =======================
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.product.manufacturer=samsung \
    ro.vendor.product.model=SM-A168F \
    ro.vendor.product.brand=samsung \
    ro.hardware=mt6789 \
    ro.hardware.audio=mt6789 \
    ro.hardware.camera=mt6789 \
    ro.hardware.graphics=mt6789 \
    ro.hardware.sensors=mt6789 \
    ro.hardware.wifi=mt6789 \
    ro.hardware.bluetooth=mt6789 \
    ro.boot.secureos=0 \
    ro.boot.tzdev=0 \
    ro.boot.trusted_storage=0 \
    ro.secureos.disable=true \
    ro.tzdev.disable=true \
    ro.trusted_storage.disable=true \
    ro.secure_storage.disable=true \
    ro.tee.disable=true \
    ro.secure_boot.disable=true \
    vendor.TEEGRIS.loaded=false \
    ro.vendor.mtk_tee_gp_support=0 \
    ro.vendor.mtk_svp_on_mtee_support=0 \
    ro.vendor.mtk_teegris_tee_support=0

