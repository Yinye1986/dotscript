#!/usr/bin/env bash

set -euo pipefail

error() {
  echo "[ERROR] $*" >&2
}

if [ $(id -u) -ne 0 ];then
  err '请使用 root 用户身份执行'
  exit 1
fi

BOOTPI=/home/hong/mnt

cat >> $BOOTPI/usercfg.txt<<'EOF'
overlay_prefix=overlays/
dtoverlay=hifiberry-dac
EOF

sed -i 's/quiet console=tty1/quiet console=serial0,115200 console=tty1/' $BOOTPI/cmdline.txt
