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

# 修改 NTP 服务器
sed -i "s/server='0.openwrt.pool.ntp.org'/server='ntp.aliyun.com'/g" package/base-files/files/bin/config_generate
sed -i "s/server='1.openwrt.pool.ntp.org'/server='time1.cloud.tencent.com'/g" package/base-files/files/bin/config_generate
sed -i "s/server='2.openwrt.pool.ntp.org'/server='time.ustc.edu.cn'/g" package/base-files/files/bin/config_generate
sed -i "s/server='3.openwrt.pool.ntp.org'/server='cn.pool.ntp.org'/g" package/base-files/files/bin/config_generate


# 修改主机名字
sed -i 's/OpenWrt/NETGEAR_R6220/g' package/base-files/files/bin/config_generate

# 修改时区
sed -i 's/UTC/Asia/Shanghai/g' package/base-files/files/bin/config_generate

# 修改WiFI名
sed -i 's/ssid=OpenWrt/ssid=NETGEAR_R6220/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 添加WiFi参数
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/set wireless.radio${devidx}.disabled=0/a\set wireless.radio${devidx}.country=CN' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 更改内核版本
# sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.10/g' target/linux/ramips/Makefile

# 版本号里显示一个自己的名字（ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
# sed -i "s/OpenWrt /ababwnq build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
# sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings
