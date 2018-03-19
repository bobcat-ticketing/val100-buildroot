################################################################################
#
# tesseract
#
################################################################################

TESSERACT_VERSION = 3.02.02
TESSERACT_SOURCE = tesseract-$(TESSERACT_VERSION).tar.gz
#TESSERACT_SITE =  https://github.com/tesseract-ocr/tesseract/archive/
TESSERACT_SITE = https://osdn.net/projects/sfnet_tesseract-ocr-alt/downloads/
TESSERACT_LICENSE = Apache-2.0
TESSERACT_LICENSE_FILES = COPYING

TESSERACT_DEPENDENCIES += leptonica \
	$(if $(BR2_PACKAGE_TESSERACT_JPEG),jpeg) \
	$(if $(BR2_PACKAGE_TESSERACT_PNG),libpng) \
	$(if $(BR2_PACKAGE_TESSERACT_TIFF),tiff)

TESSERACT_INSTALL_STAGING = YES

TESSERACT_CONF_ENV += LIBLEPT_HEADERSDIR=$(STAGING_DIR)/usr/include/leptonica

$(eval $(autotools-package))
