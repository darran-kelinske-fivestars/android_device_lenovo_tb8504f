#
# Copyright (C) 2019 The LineageOS Project
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

# inherit from common tb-common
-include device/lenovo/tb-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/TB8504F

# Asserts
TARGET_OTA_ASSERT_DEVICE := TB8504F

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_TS_MAKEUP := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_tb8703
TARGET_RECOVERY_DEVICE_MODULES := libinit_tb8703

# Kernel
TARGET_KERNEL_CONFIG := lineageos_tb8703_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11666381824 # 11666398208 - 16384

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/board_properties/tpd_suspend_status"

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Shim
TARGET_LD_SHIM_LIBS := \
    /vendor/bin/mm-qcamera-daemon|libshims_camera.so

# Inherit from the proprietary version
-include vendor/lenovo/TB8504F/BoardConfigVendor.mk
