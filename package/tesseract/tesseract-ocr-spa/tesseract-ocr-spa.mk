################################################################################
#
# tesseract spanish language training data
#
################################################################################

TESSERACT_OCR_SPA_VERSION = 3.02
TESSERACT_OCR_SPA_SOURCE = tesseract-ocr-$(TESSERACT_OCR_SPA_VERSION).spa.tar.gz
#TESSERACT_OCR_SPA_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_SPA_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/

define TESSERACT_OCR_SPA_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/spa.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/spa.traineddata
endef

define TESSERACT_OCR_SPA_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/spa.traineddata
endef

$(eval $(generic-package))
