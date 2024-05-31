#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := device/alps/spm8667p1_64

# Release name
PRODUCT_RELEASE_NAME := spm8667p1_64

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from device
$(call inherit-product, device/alps/spm8667p1_64/device.mk)

# Inherit some common twrp stuff.
#$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := spm8667p1_64
PRODUCT_NAME := twrp_spm8667p1_64
PRODUCT_BRAND := alps
PRODUCT_MODEL := spm8667p1_64
PRODUCT_MANUFACTURER := alps

#PRODUCT_BUILD_PROP_OVERRIDES += \
#    TARGET_DEVICE=spm8667p1_64 \
#    PRODUCT_NAME=vnd_spm8667p1_64 \
#    PRIVATE_BUILD_DESC="vnd_spm8667p1_64-userdebug 10 QP1A.190711.020 p5spm8666p164P2 test-keys"

#BUILD_FINGERPRINT := alps/vnd_spm8667p1_64/spm8667p1_64:10/QP1A.190711.020/p5spm8666p164P2:userdebug/test-keys
#alps/full_evb3561sv_w_65_m0/evb3561sv_w_65_m0:6.0/MRA58K/1564481527:userdebug/test-keys

#PRODUCT_GMS_CLIENTID_BASE := android-wheatek
