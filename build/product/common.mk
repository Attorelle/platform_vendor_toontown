#
# Copyright (C) 2023 toontown OS
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/toontown/build/product/version.mk)

# Inherit from ./fonts config
$(call inherit-product, vendor/toontown/build/product/fonts/google-fonts.mk)
$(call inherit-product, vendor/toontown/build/product/fonts/fonts.mk)

$(call inherit-product, vendor/toontown/build/product/properties.mk)
