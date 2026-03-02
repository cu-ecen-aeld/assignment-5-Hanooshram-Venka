##############################################################
#
# LDD
#
##############################################################

# Points to main branch of A7 repo
LDD_VERSION = 'refs/heads/main'
# will use SSH URL of Assignment 7 repository
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-Hanooshram-Venka.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

# For Buildroot to know which subdirectories contain the kernel modules
LDD_MODULE_SUBDIRS = scull misc-modules


define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
