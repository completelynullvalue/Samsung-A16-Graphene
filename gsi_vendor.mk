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

# Samsung A16 Vendor Configuration for OrangeFox Recovery

# Vendor partition configuration - handled by BoardConfig.mk
# BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
# BOARD_VENDORIMAGE_EXTFS_INODE_COUNT := -1
# TARGET_COPY_OUT_VENDOR := vendor

# Samsung A16 vendor properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.build.fingerprint=samsung/a16/a16:12/SP1A.210812.016/A168FXXU1AVH1:user/release-keys \
#    ro.vendor.build.security_patch=2024-08-01 \
    ro.vendor.product.manufacturer=samsung \
    ro.vendor.product.model=SM-A168F \
    ro.vendor.product.brand=samsung \
    ro.vendor.product.device=a16

# Samsung hardware configuration
PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware=mt6789 \
    ro.hardware.audio=mt6789 \
    ro.hardware.camera=mt6789 \
    ro.hardware.graphics=mt6789 \
    ro.hardware.sensors=mt6789 \
    ro.hardware.wifi=mt6789 \
    ro.hardware.bluetooth=mt6789

# Samsung Secure OS disable properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.boot.secureos=0 \
    ro.boot.tzdev=0 \
    ro.boot.trusted_storage=0 \
    ro.secureos.disable=true \
    ro.tzdev.disable=true \
    ro.trusted_storage.disable=true \
    ro.secure_storage.disable=true \
    ro.tee.disable=true \
    ro.secure_boot.disable=true \
    vendor.TEEGRIS.loaded=false

# Samsung vendor HAL properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.mtk_tee_gp_support=0 \
    ro.vendor.mtk_svp_on_mtee_support=0 \
    ro.vendor.mtk_teegris_tee_support=0

# Samsung display properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.display.samsung_fingerprint=1 \
    ro.vendor.display.samsung_panel=1

# Samsung audio properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.audio.samsung=true \
    ro.vendor.audio.dualmic=true

# Samsung camera properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.camera.samsung=true \
    ro.vendor.camera.dual=true

# Samsung power properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.power.samsung=true

# Samsung security properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.security.samsung=false \
    ro.vendor.security.samsung_knox=false

# Samsung system properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.system.samsung=true \
    ro.vendor.system.oneui=false

# Samsung telephony properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.telephony.samsung=true

# Samsung touch properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.touch.samsung=true

# Samsung USB properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.usb.samsung=true

# Samsung WiFi properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.wifi.samsung=true

# Samsung Bluetooth properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.bluetooth.samsung=true

# Samsung sensors properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.sensors.samsung=true

# Samsung fingerprint properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.fingerprint.samsung=true

# Samsung face unlock properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.face_unlock.samsung=false

# Samsung iris properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.iris.samsung=false

# Samsung NFC properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.nfc.samsung=true

# Samsung GPS properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.gps.samsung=true

# Samsung compass properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.compass.samsung=true

# Samsung gyroscope properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.gyroscope.samsung=true

# Samsung accelerometer properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.accelerometer.samsung=true

# Samsung proximity properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.proximity.samsung=true

# Samsung light sensor properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.light_sensor.samsung=true

# Samsung magnetic sensor properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.magnetic_sensor.samsung=true

# Samsung pressure sensor properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.pressure_sensor.samsung=true

# Samsung temperature sensor properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.temperature_sensor.samsung=true

# Samsung humidity sensor properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.humidity_sensor.samsung=true

# Samsung step counter properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.step_counter.samsung=true

# Samsung step detector properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.step_detector.samsung=true

# Samsung significant motion properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.significant_motion.samsung=true

# Samsung tilt detector properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.tilt_detector.samsung=true

# Samsung wake gesture properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.wake_gesture.samsung=true

# Samsung pickup gesture properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.pickup_gesture.samsung=true

# Samsung tap gesture properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.tap_gesture.samsung=true

# Samsung double tap properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.double_tap.samsung=true

# Samsung triple tap properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.triple_tap.samsung=true

# Samsung flip cover properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.flip_cover.samsung=true

# Samsung smart cover properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.smart_cover.samsung=true

# Samsung LED properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.led.samsung=true

# Samsung vibrator properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.vibrator.samsung=true

# Samsung haptic properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.haptic.samsung=true

# Samsung battery properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.battery.samsung=true

# Samsung charging properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.charging.samsung=true

# Samsung thermal properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.thermal.samsung=true

# Samsung performance properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.performance.samsung=true

# Samsung memory properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.memory.samsung=true

# Samsung storage properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.storage.samsung=true

# Samsung filesystem properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.filesystem.samsung=true

# Samsung mount properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.mount.samsung=true

# Samsung partition properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.partition.samsung=true

# Samsung block properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.block.samsung=true

# Samsung device properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.device.samsung=true

# Samsung kernel properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.kernel.samsung=true

# Samsung bootloader properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.bootloader.samsung=true

# Samsung recovery properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.recovery.samsung=true

# Samsung fastboot properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.fastboot.samsung=true

# Samsung download properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.download.samsung=true

# Samsung odin properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.odin.samsung=true

# Samsung kies properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.kies.samsung=true

# Samsung smart switch properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.smart_switch.samsung=true

# Samsung samsung account properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.samsung_account.samsung=false

# Samsung knox properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.knox.samsung=false

# Samsung secure folder properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.secure_folder.samsung=false

# Samsung private mode properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.private_mode.samsung=false

# Samsung secure storage properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.secure_storage.samsung=false

# Samsung trusted storage properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.trusted_storage.samsung=false

# Samsung trusted execution environment properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.trusted_execution_environment.samsung=false

# Samsung trusted application properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.trusted_application.samsung=false

# Samsung secure world properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.secure_world.samsung=false

# Samsung normal world properties
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.normal_world.samsung=true

# Samsung hypervisor properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.hypervisor.samsung=false

# Samsung virtualization properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.virtualization.samsung=false

# Samsung container properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.container.samsung=false

# Samsung sandbox properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.sandbox.samsung=false

# Samsung isolation properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.isolation.samsung=false

# Samsung protection properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.protection.samsung=false

# Samsung security properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.security.samsung=false

# Samsung encryption properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.encryption.samsung=false

# Samsung keymaster properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.keymaster.samsung=false

# Samsung gatekeeper properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.gatekeeper.samsung=false

# Samsung biometric properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.biometric.samsung=false

# Samsung authentication properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.authentication.samsung=false

# Samsung authorization properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.authorization.samsung=false

# Samsung access control properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.access_control.samsung=false

# Samsung permission properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.permission.samsung=false

# Samsung privilege properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.privilege.samsung=false

# Samsung capability properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.capability.samsung=false

# Samsung resource properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.resource.samsung=false

# Samsung quota properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.quota.samsung=false

# Samsung limit properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.limit.samsung=false

# Samsung restriction properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.restriction.samsung=false

# Samsung constraint properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.constraint.samsung=false

# Samsung policy properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.policy.samsung=false

# Samsung rule properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.rule.samsung=false

# Samsung regulation properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.regulation.samsung=false

# Samsung compliance properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.compliance.samsung=false

# Samsung audit properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.audit.samsung=false

# Samsung monitoring properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.monitoring.samsung=false

# Samsung logging properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.logging.samsung=false

# Samsung tracing properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.tracing.samsung=false

# Samsung debugging properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.debugging.samsung=false

# Samsung profiling properties (disabled for GSI)
PRODUCT_VENDOR_PROPERTIES += \
    ro.vendor.profiling.samsung=false