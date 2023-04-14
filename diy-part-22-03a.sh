#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 切换分支
# git checkout 221fbfa

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git-full lean_packages https://github.com/coolsnowwolf/packages.git;master' >> feeds.conf.default
# echo 'src-git-full lean_luci https://github.com/coolsnowwolf/luci.git;master' >> feeds.conf.default
# echo 'src-git-full kenzo https://github.com/kenzok8/openwrt-packages;master' >> feeds.conf.default
# echo 'src-git-full small https://github.com/kenzok8/small;master' >> feeds.conf.default
# git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
