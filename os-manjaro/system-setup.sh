#!/usr/bin/env bash

set -euo pipefail

# 换源
sudo tee -a /etc/pacman.conf <<'EOF'
[mypkgs]
SigLevel = Never
Server = https://gitcode.com/yinye1986/mypkgs/releases/download/mypkgs
EOF
sudo pacman -Sy

# mypkgs
sudo pacman -S --needed --noconfirm mihooo



# helix
sudo pacman -S --needed --noconfirm helix
sudo ln -sf /usr/bin/helix /usr/bin/hx
