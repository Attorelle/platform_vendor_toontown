#
# Copyright (C) 2023 toontown OS
#
# SPDX-License-Identifier: Apache-2.0
#

# Setting path to fonts
LOCAL_PATH := vendor/toontown/fonts/google-sans

# Setting google-sans family
PRODUCT_PACKAGES += \
    GoogleSans-Italic.ttf \
    GoogleSans-Regular.ttf \
    GoogleSansClock-Regular.ttf

PRODUCT_COPY_FILES += \
    vendor/toontown/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml