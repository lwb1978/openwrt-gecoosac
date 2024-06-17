# Copyright (C) 2024 Openwrt.org
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-gecoosac
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

LUCI_TITLE:=LuCI Support for gecoosac
LUCI_DEPENDS:=+luci-compat +coreutils-nohup +gecoosac
LUCI_PKGARCH:=@(aarch64||arm||i386||mips||mipsel||x86_64)

define Package/$(PKG_NAME)/conffiles
/etc/gecoosac
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
