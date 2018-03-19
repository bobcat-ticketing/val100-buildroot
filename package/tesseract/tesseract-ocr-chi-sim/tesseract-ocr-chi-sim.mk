################################################################################
#
# tesseract simplified chinese language training data
#
################################################################################

TESSERACT_OCR_CHI_SIM_VERSION = 3.02
TESSERACT_OCR_CHI_SIM_SOURCE = tesseract-ocr-$(TESSERACT_OCR_CHI_SIM_VERSION).chi_sim.tar.gz
#TESSERACT_OCR_CHI_SIM_SITE = http://tesseract-ocr.googlecode.com/files/
TESSERACT_OCR_CHI_SIM_SITE = http://pkgs.fedoraproject.org/repo/pkgs/tesseract-langpack/


define TESSERACT_OCR_CHI_SIM_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(@D)/tessdata/chi_sim.traineddata \
		$(TARGET_DIR)/usr/share/tessdata/chi_sim.traineddata
endef

define TESSERACT_OCR_CHI_SIM_UNINSTALL_TARGET_CMDS
	rm -f $(TARGET_DIR)/usr/share/tessdata/chi_sim.traineddata
endef

$(eval $(generic-package))
