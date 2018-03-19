################################################################################
#
# tesseract russian language training data
#
################################################################################

TESSERACT_OCR_RUS_VERSION = 3.02
TESSERACT_OCR_RUS_SOURCE = tesseract-ocr-$(TESSERACT_OCR_RUS_VERSION).rus.tar.gz
#TESSERACT_OCR_RUS_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_RUS_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack:

define TESSERACT_OCR_RUS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/rus.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/rus.traineddata
endef

define TESSERACT_OCR_RUS_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/rus.traineddata
endef

$(eval $(generic-package))
