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

# git
sudo pacman -S --needed --noconfirm git
git config --global user.name "Yinye1986"
git config --global user.email "Yinye1986@gmail.com"
git config --global core.editor "hx"
git config --global init.defaultbranch "main"

# fish
sudo pacman -S --needed --noconfirm fish
fish -c exit

# yazi
sudo pacman -S --needed --noconfirm yazi
tee -a /home/hong/.config/fish/config.fish <<'EOF'
function fm
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end
EOF

# helix
# sudo pacman -S --needed --noconfirm helix
# sudo ln -sf /usr/bin/helix /usr/bin/hx
