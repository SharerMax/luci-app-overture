# Copyright (C) 2020 ShareMax
#
# This is free software, licensed under the MIT License.
#
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-overture
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_LICENSE:=MIT

LUCI_TITLE:=LuCI support for Overture
LUCI_DEPENDS:=+overture
LUCI_PKGARCH:=all

PKG_MAINTAINER:=SharerMax

include $(TOPDIR)/feeds/luci/luci.mk

define Package/$(PKG_NAME)/conffiles
/etc/config/overture
/etc/overture/ip_network_primary
/etc/overture/ip_network_alternative
/etc/overture/domain_primary
/etc/overture/domain_alternative
/etc/overture/hosts
/etc/overture/domain_ttl
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./root/etc/config/overture $(1)/etc/config/overture
	
	$(INSTALL_DIR) $(1)/etc/overture
	$(INSTALL_DATA) ./root/etc/overture/* $(1)/etc/overture/
endef

# call BuildPackage - OpenWrt buildroot signature
