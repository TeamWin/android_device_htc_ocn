#
# Copyright (C) 2016 The Android Open-Source Project
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
# This file includes all definitions that apply to ALL marlin and sailfish devices
#
# Everything in this directory will become public

PRODUCT_SHIPPING_API_LEVEL := 25

#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, device/htc/ocn/common/common64.mk)

# For android_filesystem_config.h
PRODUCT_PACKAGES += fs_config_files \
                    fs_config_dirs

$(call inherit-product-if-exists, hardware/qcom/msm8998/msm8998.mk)
$(call inherit-product-if-exists, vendor/qcom/gpu/msm8998/msm8998-gpu-vendor.mk)

# b/30349163
# Set default log size on userdebug/eng build to 1M
ifneq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
PRODUCT_PROPERTY_OVERRIDES += ro.logd.size=1M
endif
