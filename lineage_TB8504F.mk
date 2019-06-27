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

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TB8504F/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_TB8504F
PRODUCT_DEVICE := TB8504F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB8504F
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8953_64-user 6.0.1 MMB29M 559 release-keys" \
    TARGET_DEVICE="TB8504F"

BUILD_FINGERPRINT := Lenovo/TB8504F/TB8504F:6.0.1/MMB29M/TB8504F_USR_S037_180404_Q1241_ROW:user/release-keys
