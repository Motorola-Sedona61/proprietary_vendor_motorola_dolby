# SPDX-License-Identifier: Apache-2.0

MOTOROLA_DOLBY_PATH := vendor/motorola/dolby
PRODUCT_SOONG_NAMESPACES += $(MOTOROLA_DOLBY_PATH)

PRODUCT_PACKAGES += \
    HalcyonDolby \
    libcodec2_soft_ac4dec \
    libcodec2_soft_ddpdec \
    libdlbvol \
    libswdap \
    libswgamedap \
    vendor.dolby.dms.service \
    vendor.dolby.media.c2@1.0-service

PRODUCT_COPY_FILES += \
    $(MOTOROLA_DOLBY_PATH)/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(foreach config,$(wildcard $(MOTOROLA_DOLBY_PATH)/proprietary/vendor/etc/dolby/*.xml),\
        $(config):$(TARGET_COPY_OUT_VENDOR)/etc/dolby/$(notdir $(config)))
