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

# Private vendor
-include vendor/mikeioannina/product.mk

# ih8sn
PRODUCT_PACKAGES += ih8sn

ifneq ("$(wildcard  vendor/extra/configs/ih8sn/ih8sn_$(subst lineage_,,$(TARGET_PRODUCT)).conf)","")
PRODUCT_COPY_FILES += \
    vendor/extra/configs/ih8sn/ih8sn_$(subst lineage_,,$(TARGET_PRODUCT)).conf:/system/etc/ih8sn.conf
else
PRODUCT_COPY_FILES += \
    vendor/extra/configs/ih8sn/ih8sn_generic.conf:/system/etc/ih8sn.conf
endif

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/ih8sn \
    system/etc/ih8sn.conf \
    system/etc/init/ih8sn.rc
