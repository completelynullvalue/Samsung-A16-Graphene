#
# Copyright (C) 2024 GrapheneOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Board configuration for GrapheneOS GSI
# Standalone configuration without problematic includes

# Basic board configuration
TARGET_BOOTLOADER_BOARD_NAME := gsi_clean
TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := false

# Platform - Samsung A16 GSI
TARGET_BOARD_PLATFORM := mt6789
TARGET_BOARD_PLATFORM_GPU := mali-g57

# Samsung A16 specific settings
BOARD_VENDOR := samsung
TARGET_BOOTLOADER_BOARD_NAME := a15
TARGET_SCREEN_DENSITY := 450

# Samsung A16 hardware configuration
TARGET_CPU_VARIANT_RUNTIME := cortex-a76
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55
TARGET_CPU_SMP := true
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Samsung A16 TrustZone disable
# TrustZone services enabled for Samsung hardware compatibility
# BOARD_KERNEL_CMDLINE += androidboot.tee=0
BOARD_KERNEL_CMDLINE += androidboot.dm_verity=0
BOARD_KERNEL_CMDLINE += androidboot.veritymode=enforcing
BOARD_KERNEL_CMDLINE += androidboot.secureos=0
# BOARD_KERNEL_CMDLINE += androidboot.tzdev=0
BOARD_KERNEL_CMDLINE += androidboot.trusted_storage=0

# Samsung A16 boot image
TARGET_PREBUILT_KERNEL := device/grapheneos/gsi_clean/prebuilt/kernel
TARGET_PREBUILT_DTB := device/grapheneos/gsi_clean/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := device/grapheneos/gsi_clean/prebuilt/dtbo.img
BOARD_PREBUILT_BOOTIMAGE := device/grapheneos/gsi_clean/prebuilt/boot.img

# Architecture - ARM64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Secondary architecture for 32-bit apps
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Bootloader - GSI
TARGET_BOOTLOADER_BOARD_NAME := gsi_clean
TARGET_NO_BOOTLOADER := true

# Kernel - Use prebuilt kernel
TARGET_NO_KERNEL := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5368709120  # 5GB for system+system_ext+product+vendor
# BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824  # 1GB for vendor
# BOARD_SYSTEM_EXTIMAGE_PARTITION_SIZE := 1073741824  # Disabled - packed into system
# BOARD_PRODUCTIMAGE_PARTITION_SIZE := 536870912  # Disabled - packed into system
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_FSTAB := device/grapheneos/gsi_clean/fstab.gsi
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := false
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
BOARD_SUPPRESS_SECURE_ERASE := true

# AVB configuration for GSI - DISABLED to get build working
# BOARD_AVB_ENABLE := true

# Override the problematic mainline rollback index setting - DISABLED
# BOARD_AVB_ROLLBACK_INDEX := 3
# BOARD_AVB_ROLLBACK_INDEX_LOCATION := 1

# Override any other problematic AVB settings - DISABLED
# BOARD_AVB_BOOT_ROLLBACK_INDEX := 3
# BOARD_AVB_BOOT_ROLLBACK_INDEX_LOCATION := 2

# Enable chain partition for system (like goldfish) - DISABLED
# BOARD_AVB_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
# BOARD_AVB_SYSTEM_ALGORITHM := SHA256_RSA2048
# BOARD_AVB_SYSTEM_ROLLBACK_INDEX := 3
# BOARD_AVB_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# GSI specific - separate partitions for vendor and system_ext
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_MOUNT_POINT := system
# TARGET_COPY_OUT_PRODUCT := system/product  # Pack product directly into /system - let build system handle this
# TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext  # Pack system_ext directly into /system - let build system handle this
# Try using separate vendor partition to avoid fs_config conflicts
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824  # 1GB
BOARD_USES_VENDORIMAGE := true
# BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4  # Disabled - packed into system
# BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4  # Disabled - packed into system
# BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
# BOARD_VENDORIMAGE_EXTFS_INODE_COUNT := -1

# Essential GSI settings (copied from BoardConfigGsiCommon.mk but without AVB)
# TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true  # Disabled to allow super.img creation
TARGET_USERIMAGES_SPARSE_EROFS_DISABLED := true
BOARD_USES_SYSTEM_DLKMIMAGE := true
BOARD_SYSTEM_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_SYSTEM_DLKM := system_dlkm
# TARGET_USERIMAGES_USE_F2FS := true
# BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 67108864  # Not needed when BOARD_SYSTEMIMAGE_PARTITION_SIZE is defined
BOARD_USES_METADATA_PARTITION := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 16777216
# Vendor partition configuration
# BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
# BOARD_VENDORIMAGE_PARTITION_SIZE := 1610612736  # 1.5GB for Samsung vendor files
# BOARD_VENDORIMAGE_EXTFS_INODE_COUNT := -1
# BOARD_VENDORIMAGE_EXTFS_RSV_PCT := 0

# Disable system_other partition for GSI
BOARD_USES_SYSTEM_OTHER_ODEX := false

# Enable dynamic partitions for GSI
BOARD_SUPER_PARTITION_SIZE := 6442450944  # 6GB for super partition (system + system_ext + vendor + product)
BOARD_SUPER_PARTITION_GROUPS := gsi_dynamic_partitions
BOARD_GSI_DYNAMIC_PARTITIONS_PARTITION_LIST := system
BOARD_GSI_DYNAMIC_PARTITIONS_SIZE := 8442450944  # 6GB total
BOARD_DYNAMIC_PARTITION_ENABLE := true

# GSI additional configurations
TARGET_COPY_OUT_SYSTEM := system
BOARD_USES_SYSTEM_DLKMIMAGE := true
BOARD_SYSTEM_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_SYSTEM_DLKM := system_dlkm
BOARD_USES_METADATA_PARTITION := true

# GSI with separate vendor and system_ext partitions
# BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 67108864  # Not needed for GSI with dynamic partitions

# SELinux policies are defined in gsi_product.mk

# Additional GSI-specific settings
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_GENERIC_KERNEL_IMAGE := true
# GSI doesn't need vendor_boot, so don't set these flags
# BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true
# BOARD_MOVE_GSI_AVB_KEYS_TO_VENDOR_BOOT := true

# VNDK
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current

# Keystore configuration for GSI
BOARD_USES_SOFTWARE_KEYSTORE := true
BOARD_USES_SOFTWARE_GATEKEEPER := true

# Bluetooth defines
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := build/make/target/board/mainline_arm64/bluetooth

# Enable configurable audio policy
BOARD_USES_GENERIC_AUDIO := true

# Additional settings for GSI compatibility
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_SYSTEM_OTHER_ODEX := false

# Force disable dexpreopt to prevent system_other creation
BOARD_DEX_PREOPT_DEFAULT := false
BOARD_DEX_PREOPT_BOOT_IMAGE_DEFAULT := false
BOARD_DEX_PREOPT_SYSTEM_OTHER := false

# Disable system_other partition by setting size to 0
BOARD_SYSTEMOTHERIMAGE_PARTITION_SIZE := 0

# Override artifact path requirements at board level
BOARD_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false

# Configure malloc for Scudo-only on 64-bit builds
BOARD_HARDENED_MALLOC := false

# Force Scudo configuration at the board level
BOARD_MALLOC_IMPL := scudo

# Enable Scudo and disable hardened malloc for 64-bit builds
BOARD_CFLAGS += -DUSE_SCUDO -UUSE_H_MALLOC
BOARD_CPPFLAGS += -DUSE_SCUDO -UUSE_H_MALLOC

# Additional flags to ensure Scudo is used
BOARD_CFLAGS += -DHARDENED_MALLOC=0
BOARD_CPPFLAGS += -DHARDENED_MALLOC=0

# Force Scudo for all architectures
PRODUCT_MALLOC_IMPL := scudo

# Completely disable hardened malloc
BOARD_HARDENED_MALLOC_DISABLE := true

# SELinux policy configuration for GSI Clean
BOARD_SEPOLICY_DIRS += \
    device/grapheneos/gsi_clean/sepolicy

# Additional GSI-specific SELinux configuration
BOARD_SEPOLICY_M4DEFS += \
    -D keystore_gsi_policy=1
    
# Fstab shit
TARGET_NO_CUTTLEFISH_FSTAB := true

# Treble disabled
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Vendor image disabled
BOARD_USES_VENDORIMAGE := false


