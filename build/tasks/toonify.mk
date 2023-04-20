#
# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017, 2020 The LineageOS Project
# Copyleft (C) 2023 toontown OS
#
# SPDX-License-Identifier: Apache-2.0
#

# -----------------------------------------------------------------
# toontown Update Package

TOONTOWN_TARGET_PACKAGE := $(PRODUCT_OUT)/$(TOONTOWN_VERSION).zip
SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

.PHONY: toonify
toonify: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(TOONTOWN_TARGET_PACKAGE)
	$(hide) $(SHA256) $(TOONTOWN_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(TOONTOWN_TARGET_PACKAGE).sha256sum
	@echo "- Packaged successfully: $(TOONTOWN_TARGET_PACKAGE)" >&2