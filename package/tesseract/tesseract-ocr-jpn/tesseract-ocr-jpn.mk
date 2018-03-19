################################################################################
#
# tesseract japanese language training data
#
################################################################################

TESSERACT_OCR_JPN_VERSION = 3.02
TESSERACT_OCR_JPN_SOURCE = tesseract-ocr-$(TESSERACT_OCR_JPN_VERSION).jpn.tar.gz
#TESSERACT_OCR_JPN_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_JPN_SITE = package/tesseract/tesseract-ocr-jpn/tesseract-ocr-jpn.mk


define TESSERACT_OCR_JPN_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/jpn.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/jpn.traineddata
endef

define TESSERACT_OCR_JPN_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/jpn.traineddata
endef

$(eval $(generic-package))
