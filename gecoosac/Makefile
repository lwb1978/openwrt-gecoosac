include $(TOPDIR)/rules.mk

PKG_NAME:=gecoosac
PKG_VERSION:=1.0
PKG_RELEASE:=1

ifeq ($(ARCH),aarch64)
  PKG_ARCH:=ac_linux_arm64
  PKG_HASH:=186e1e498de1af0fe6db3b8fa627159639e2d953106aea3bedfc192752602c9e
else ifeq ($(ARCH),arm)
  PKG_ARCH:=ac_linux_arm
  PKG_HASH:=4ea2696683b20f00f34f8d93331780bb25df4f411958142c5aa79a5e63a94fa2
else ifeq ($(ARCH),mips)
  PKG_ARCH:=ac_linux_mips
  PKG_HASH:=7b15d068ec6957d869686e058cf647678066c79586685f35c570236157964ef1
else ifeq ($(ARCH),mipsel)
  PKG_ARCH:=ac_linux_mipsel
  PKG_HASH:=f2d8c6c0a155ae6db612f50e8442d299368c9c110f0b6c9cb9132b20bf0bddc7
else ifeq ($(ARCH),i386)
  PKG_ARCH:=ac_linux_386
  PKG_HASH:=3bac1e6c0872ae0b0196ccc5b7e0ef3d484d3df044048f61a954780aff09ea19
else ifeq ($(ARCH),x86_64)
  PKG_ARCH:=ac_linux_amd64
  PKG_HASH:=f88ac19986d81f9f6dc287ade300347962534ad60da50eff543b8e3b37bc8323
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
