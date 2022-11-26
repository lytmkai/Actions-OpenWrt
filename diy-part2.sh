#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

sed -i 's/192.168./10.0./g' package/base-files/files/bin/config_generate

sed -i "/\$netm/a\                                set.network.\$1.gateway='10.0.0.1'"     package/base-files/files/bin/config_generate

sed -i "s/network.globals.ula_prefix='auto'/network.globals.ula_prefix='fd00::1'/g"     package/base-files/files/bin/config_generate

sed -i 's/OpenWrt /OpenWrt-lytmkai /g' zzz-default-settings








# Modify default Theme
sed -i 's/luci-theme-bootstrap/luci-theme-mcat/g' feeds/luci/collections/luci/Makefile
