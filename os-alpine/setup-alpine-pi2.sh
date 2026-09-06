#!/usr/bin/env bash

if [ $(id -u) -ne 0 ];then
  echo 'ERROR: 请使用 root 用户身份执行'
  exit 1
fi

BOOTPI=/home/hong/mnt

# 外设配置
cat >> $BOOTPI/usercfg.txt<<'EOF'
overlay_prefix=overlays/
EOF

# 内核参数
sed -i 's/quiet console=tty1/quiet console=serial0,115200 console=tty1/' $BOOTPI/cmdline.txt
