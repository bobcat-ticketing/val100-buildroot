################################################################################
#
# tesseract german language training data
#
################################################################################

TESSERACT_OCR_DEU_VERSION = 3.02
TESSERACT_OCR_LANGUAGE = deu
TESSERACT_OCR_DEU_SOURCE = tesseract-ocr-$(TESSERACT_OCR_DEU_VERSION).$(TESSERACT_OCR_LANGUAGE).tar.gz
#TESSERACT_OCR_DEU_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_DEU_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/

define TESSERACT_OCR_DEU_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/$(TESSERACT_OCR_LANGUAGE).traineddata \
		$(TARGET_DIR)/usr/share/tessdata/$(TESSERACT_OCR_LANGUAGE).traineddata
endef

define TESSERACT_OCR_DEU_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/$(TESSERACT_OCR_LANGUAGE).traineddata
endef

$(eval $(generic-package))
