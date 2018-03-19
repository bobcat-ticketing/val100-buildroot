################################################################################
#
# tesseract hindi language training data
#
################################################################################

TESSERACT_OCR_HIN_VERSION = 3.02
TESSERACT_OCR_HIN_SOURCE = tesseract-ocr-$(TESSERACT_OCR_VERSION).hin.tar.gz
#TESSERACT_OCR_HIN_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_HIN_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/

define TESSERACT_OCR_HIN_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/hin.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/hin.traineddata
endef

define TESSERACT_OCR_HIN_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/hin.traineddata
endef

$(eval $(generic-package))
