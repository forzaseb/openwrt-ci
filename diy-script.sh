#!/bin/bash

# 修改默认IP
# sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 更改默认 Shell 为 zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# TTYD 免登录
# sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# 修复 miniupnpd
cp -f $GITHUB_WORKSPACE/patches/400-fix_nft_miniupnp.patch feeds/packages/net/miniupnpd/patches/400-fix_nft_miniupnp.patch

./scripts/feeds update -a
./scripts/feeds install -a
