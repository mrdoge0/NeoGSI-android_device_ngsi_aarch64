#
# Copyright (C) 2025 The NeoGSI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit AOSP
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product-if-exists, build/target/product/embedded.mk)

# Inherit Project Pixelage
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Inherit NeoGSI common makefile
$(call inherit-product, vendor/ngsi/implement.mk)

# Set initial device and target info
PRODUCT_NAME := pixelage_ngsi_aarch64_SaR
PRODUCT_DEVICE := generic_arm64
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on ARM64
