#!/bin/bash
#============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

sed -i 's/192.168./10.0./g' package/base-files/files/bin/config_generate

sed -i "/\$netm/a\                                set.network.\$1.gateway='10.0.0.1'"     package/base-files/files/bin/config_generate

sed -i "s/network.globals.ula_prefix='auto'/network.globals.ula_prefix='fd00::1'/g"     package/base-files/files/bin/config_generate

sed -i 's/LEDE R/LEDE-lytmkai R/g' package/lean/default-settings/files/zzz-default-settings


sed -i 's/luci-theme-bootstrap/luci-theme-material/g' feeds/luci/collections/luci/Makefile
