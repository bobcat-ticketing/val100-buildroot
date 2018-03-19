################################################################################
#
# qt5tools
#
################################################################################

QT5TOOLS_VERSION = $(QT5_VERSION)
QT5TOOLS_SITE = $(QT5_SITE)
QT5TOOLS_SOURCE = qttools-opensource-src-$(QT5TOOLS_VERSION).tar.xz
QT5TOOLS_DEPENDENCIES = qt5base
QT5TOOLS_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_QT5BASE_LICENSE_APPROVED),y)
QT5TOOLS_LICENSE = LGPLv2.1 or GPLv3.0
QT5TOOLS_LICENSE_FILES = LICENSE.GPL LICENSE.LGPL LGPL_EXCEPTION.txt
else
QT5TOOLS_LICENSE = Commercial license
QT5TOOLS_REDISTRIBUTE = NO
endif

define QT5TOOLS_CONFIGURE_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/qmake)
endef

define QT5TOOLS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

define QT5TOOLS_INSTALL_STAGING_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) install
	$(QT5_LA_PRL_FILES_FIXUP)
endef

ifeq ($(BR2_PREFER_STATIC_LIB),)
define QT5TOOLS_INSTALL_TARGET_CMDS
	cp -dpf $(STAGING_DIR)/usr/lib/libQt5Help*.so.* $(TARGET_DIR)/usr/lib
#	cp -dpf $(STAGING_DIR)/usr/lib/libQtCLucene.so.* $(TARGET_DIR)/usr/lib
endef
endif

$(eval $(generic-package))
