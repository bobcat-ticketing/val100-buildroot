################################################################################
#
# tesseract english language training data
#
################################################################################

TESSERACT_OCR_ENG_VERSION = 3.02
TESSERACT_OCR_ENG_SOURCE = tesseract-ocr-$(TESSERACT_OCR_ENG_VERSION).eng.tar.gz
#TESSERACT_OCR_ENG_SITE = http://tesseract-ocr.googlecode.com/files/
#TESSERACT_OCR_ENG_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/
TESSERACT_OCR_ENG_SITE = https://osdn.net/projects/sfnet_tesseract-ocr-alt/downloads/


define TESSERACT_OCR_ENG_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/eng.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/eng.traineddata
endef

define TESSERACT_OCR_ENG_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/eng.traineddata
endef

$(eval $(generic-package))
