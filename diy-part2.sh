#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

sed -i 's/192.168./10.0./g' package/base-files/files/bin/config_generate

sed -i "/\$netm/a\                                set.network.\$1.gateway='10.0.0.1'"     package/base-files/files/bin/config_generate

sed -i "s/network.globals.ula_prefix='auto'/network.globals.ula_prefix='fd00::1'/g"     package/base-files/files/bin/config_generate

sed -i 's/OpenWrt /OpenWrt-lytmkai /g' package/lean/default-settings/files/zzz-default-settings

sed -i 's/R23.2.14/R23.3.4/g' package/lean/default-settings/files/zzz-default-settings


sed -i '/192.168.0.0/d' package/feeds/kenzo/luci-app-passwall/root/usr/share/passwall/rules/lanlist_ipv4

sed -i "1i 192.168.0.0/16" >> package/feeds/kenzo/luci-app-passwall/root/usr/share/passwall/rules/proxy_ip




# Modify default Theme
sed -i 's/luci-theme-bootstrap/luci-theme-mcat/g' feeds/luci/collections/luci/Makefile





