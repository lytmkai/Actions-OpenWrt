#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.10.10.254/g' package/base-files/files/bin/config_generate

# Modify default Theme
sed -i 's/luci-theme-bootstrap/luci-theme-mcat/g' feeds/luci/collections/luci/Makefile
