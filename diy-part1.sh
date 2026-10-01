#!/bin/bash
#=============================================================
# https://github.com/Lancenas/Actions-Lean-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# theme  repo
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default

sed -i '/helloworld/d' feeds.conf.default

