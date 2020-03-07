################################################################################
#
# hugetlb-testsuite
#
################################################################################

LIBHUGETLBFS_VERSION = 2e7e8f8597398ba7ae52c258bffbe9874c5c0028
LIBHUGETLBFS_SITE = git://github.com/alexghiti/libhugetlbfs.git

define LIBHUGETLBFS_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D) ARCH=riscv64 CC=$(TARGET_CC)
endef

define LIBHUGETLBFS_INSTALL_TARGET_CMDS
	cp -r $(@D) $(TARGET_DIR)/usr/lib/
endef

$(eval $(generic-package))
