#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
# sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 修改主机名字
# sed -i 's/OpenWrt/R6220/g' package/base-files/files/bin/config_generate

# 更改内核版本
# sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/ramips/Makefile

# 版本号里显示一个自己的名字（ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
# sed -i "s/OpenWrt /ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
# sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

# 添加WiFi参数
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.radio${devidx}.disabled=0/a\set wireless.radio${devidx}.country=CN' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 修改target.mk
# sed -i '/DEFAULT_PACKAGES.router:=\\/a\luci-app-upnp luci-app-nlbwmon luci-app-turboacc curl ca-certificates block-mount coremark kmod-nf-nathelper kmod-nf-nathelper-extra kmod-ipt-raw kmod-tun iptables-mod-tproxy iptables-mod-extra ipset ip-full default-settings luci luci-newapi luci-app-ddns ddns-scripts_aliyun ddns-scripts_dnspod \\' include/target.mk
