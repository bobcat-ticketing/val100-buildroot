################################################################################
#
# tesseract korean language training data
#
################################################################################

TESSERACT_OCR_KOR_VERSION = 3.02
TESSERACT_OCR_KOR_SOURCE = tesseract-ocr-$(TESSERACT_OCR_KOR_VERSION).kor.tar.gz
#TESSERACT_OCR_KOR_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_KOR_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/  

define TESSERACT_OCR_KOR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/kor.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/kor.traineddata
endef

define TESSERACT_OCR_KOR_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/kor.traineddata
endef

$(eval $(generic-package))
