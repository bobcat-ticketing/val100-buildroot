################################################################################
#
# leptonica
#
################################################################################

LEPTONICA_VERSION = 1.69
#LEPTONICA_SITE = http://leptonica.googlecode.com/files
LEPTONICA_SOURCE = leptonica-$(LEPTONICA_VERSION).tar.gz
LEPTONICA_SITE = https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/leptonica
LEPTONICA_LICENSE = BSD-2c
LEPTONICA_LICENSE_FILES = leptonica-license.txt
LEPTONICA_INSTALL_STAGING = YES

LEPTONICA_CONF_OPTS += --disable-programs --without-giflib

ifeq ($(BR2_PACKAGE_ZLIB),y)
LEPTONICA_DEPENDENCIES += zlib
else
LEPTONICA_CONF_OPTS += --without-zlib
endif

ifeq ($(BR2_PACKAGE_JPEG),y)
LEPTONICA_DEPENDENCIES += jpeg
else
LEPTONICA_CONF_OPTS += --without-jpeg
endif

ifeq ($(BR2_PACKAGE_LIBPNG),y)
LEPTONICA_DEPENDENCIES += libpng
else
LEPTONICA_CONF_OPTS += --without-libpng
endif

ifeq ($(BR2_PACKAGE_TIFF),y)
LEPTONICA_DEPENDENCIES += tiff
else
LEPTONICA_CONF_OPTS += --without-libtiff
endif

ifeq ($(BR2_PACKAGE_WEBP),y)
LEPTONICA_DEPENDENCIES += webp
endif

$(eval $(autotools-package))
