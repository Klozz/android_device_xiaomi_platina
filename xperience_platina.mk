# 
# Copyright (C) 2018 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product, vendor/xperience/config/common_full_phone.mk)

# Inherit from platina device
$(call inherit-product, device/xiaomi/platina/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

#CAF prop CAF includes
include device/qcom/common/common.mk

# Wpa will crash without this.
DISABLE_EAP_PROXY := true

PRODUCT_NAME := xperience_platina
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := platina
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi 8 Lite

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="platina" \
    PRODUCT_NAME="platina" \
    PRIVATE_BUILD_DESC="taimen-user 9 PQ2A.190305.002 5240760 release-keys"

    BUILD_FINGERPRINT="google/taimen/taimen:9/PQ2A.190405.003/5310204:user/release-keys"

TARGET_VENDOR := Xiaomi
