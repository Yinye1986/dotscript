#!/usr/bin/env bash

git clone https://aur.archlinux.org/yay.git
cd yay
GO111MODULE=on GOPROXY=https://goproxy.cn makepkg -si
cd ..
rm -rf yay
