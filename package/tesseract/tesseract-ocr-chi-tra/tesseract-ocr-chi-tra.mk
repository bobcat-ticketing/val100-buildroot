################################################################################
#
# tesseract traditional chinese training data
#
################################################################################

TESSERACT_OCR_CHI_TRA_VERSION = 3.02
TESSERACT_OCR_CHI_TRA_SOURCE = tesseract-ocr-$(TESSERACT_OCR_CHI_TRA_VERSION).chi_tra.tar.gz
#TESSERACT_OCR_CHI_TRA_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_CHI_TRA_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/   

define TESSERACT_OCR_CHI_TRA_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/chi_tra.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/chi_tra.traineddata
endef

define TESSERACT_OCR_CHI_TRA_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/chi_tra.traineddata
endef

$(eval $(generic-package))
