################################################################################
#
# tesseract dutch language training data
#
################################################################################

TESSERACT_OCR_NLD_VERSION = 3.02
TESSERACT_OCR_LANGUAGE = nld
TESSERACT_OCR_NLD_SOURCE = tesseract-ocr-$(TESSERACT_OCR_NLD_VERSION).nld.tar.gz
#TESSERACT_OCR_NLD_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_NLD_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/ 

define TESSERACT_OCR_NLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/nld.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/nld.traineddata
endef

define TESSERACT_OCR_NLD_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/nld.traineddata
endef

$(eval $(generic-package))
