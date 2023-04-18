#
# Copyright (C) 2023 toontown OS
#
# SPDX-License-Identifier: Apache-2.0
#

TOONTOWN_CODENAME := tofu
TOONTOWN_DEVICE := $(shell echo "$(TARGET_PRODUCT)" | cut -d '_' -f 2,3)
TOWNTOON_DATE := $(shell date -u +%Y%m%d)

ifeq ($(TOONTOWN_RELEASE), true)
	TOONTOWN_BUILD_VARIANT := official
else
	TOONTOWN_BUILD_VARIANT := unofficial
endif

TOONTOWN_VERSION := toontown-$(TOONTOWN_CODENAME)-$(TOONTOWN_DEVICE)-$(TOWNTOON_DATE)-$(TOONTOWN_BUILD_VARIANT)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	ro.toontown.version=$(TOONTOWN_VERSION) \
	ro.toontown.device=$(TOONTOWN_DEVICE)