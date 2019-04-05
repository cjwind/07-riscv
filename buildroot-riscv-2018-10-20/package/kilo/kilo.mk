################################################################################
#
# kilo
#
################################################################################

KILO_VERSION = 1.0
KILO_SOURCE = kilo-$(KILO_VERSION).tar.gz
KILO_SITE = https://github.com/cjwind/07-riscv/raw/master
KILO_LICENSE = BSD 2
KILO_LICENSE_FILES = LICENSE

define KILO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define KILO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/kilo $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
