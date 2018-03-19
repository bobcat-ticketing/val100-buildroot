################################################################################
#
# tesseract french language training data
#
################################################################################

TESSERACT_OCR_FRA_VERSION = 3.02
TESSERACT_OCR_FRA_SOURCE = tesseract-ocr-$(TESSERACT_OCR_FRA_VERSION).fra.tar.gz
#TESSERACT_OCR_FRA_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_FRA_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/ 

define TESSERACT_OCR_FRA_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/fra.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/fra.traineddata
endef

define TESSERACT_OCR_FRA_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/fra.traineddata
endef

$(eval $(generic-package))
