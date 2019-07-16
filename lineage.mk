#
# Copyright (C) 2018 The LineageOS Project
#
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from tb8504f device
$(call inherit-product, device/lenovo/tb8504f/device.mk)

PRODUCT_BRAND := Lenovo
PRODUCT_DEVICE := tb8504f
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := TB-8504f
PRODUCT_NAME := lineage_tb8504f

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

TARGET_VENDOR_PRODUCT_NAME := tb8504f

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="tb8504f" \
    PRODUCT_NAME="tb8504f" \
    PRIVATE_BUILD_DESC="tb8504f-user 7.1.2 N2G47H V9.2.6.0.NCCMIEK release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Lenovo/tb8504f/tb8504f:7.1.2/N2G47H/V9.2.6.0.NCCMIEK:user/release-keys"
