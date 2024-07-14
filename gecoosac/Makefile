include $(TOPDIR)/rules.mk

PKG_NAME:=gecoosac
PKG_VERSION:=2.1
PKG_RELEASE:=1

ifeq ($(ARCH),aarch64)
  PKG_ARCH:=ac_linux_arm64
  PKG_HASH:=3c70bc50dc328d49fd6e6558f5a18712b3fc402f975560fbc490025408d6b5a5
else ifeq ($(ARCH),arm)
  PKG_ARCH:=ac_linux_arm
  PKG_HASH:=137d0e2a31182beecb28baab7bf4f3d80496d6fb98733b440754d18f93cd3b70
else ifeq ($(ARCH),mips)
  PKG_ARCH:=ac_linux_mips
  PKG_HASH:=cff5509d11253d30c8f88b3d5103f1e2edb9a46bd9dd36a5ed380bbe071c1023
else ifeq ($(ARCH),mipsel)
  PKG_ARCH:=ac_linux_mipsel
  PKG_HASH:=9d0ee8f1a09435c54b7b5de19dfe5f992b8d6f31638056822467b0b43aea6ab7
else ifeq ($(ARCH),i386)
  PKG_ARCH:=ac_linux_386
  PKG_HASH:=0edc304f71715e71bc8e3f7f3317ae9ce18df713da6a3f584980461362eb6621
else ifeq ($(ARCH),x86_64)
  PKG_ARCH:=ac_linux_amd64
  PKG_HASH:=3a57501ec231a0099aff0c401b573a6ebeb04ed6ea3b29a25ebc4be130695825
else
  PKG_HASH:=dummy
endif

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(ARCH_PACKAGES)
PKG_SOURCE_URL:=https://github.com/lwb1978/openwrt-gecoosac/releases/download/V$(PKG_VERSION)/$(PKG_ARCH)?
UNPACK_CMD=$(CP) $(DL_DIR)/$(PKG_SOURCE) $(PKG_BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

PKG_LICENSE:=AGPL-3.0-only
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=lwb1978 <lwb1978@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)-$(PKG_VERSION)
  SECTION:=net
  CATEGORY:=Network
  TITLE:=gecoosac server (version $(PKG_VERSION))
  URL:=http://www.cnrouter.com/
  DEPENDS:=@(aarch64||arm||i386||mips||mipsel||x86_64) @!(TARGET_x86_geode||TARGET_x86_legacy)
endef

define Build/Compile
endef

define Package/$(PKG_NAME)-$(PKG_VERSION)/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION) $(1)/usr/bin
endef

$(eval $(call BuildPackage,$(PKG_NAME)-$(PKG_VERSION)))
