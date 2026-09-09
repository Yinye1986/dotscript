#!/usr/bin/env bash

# 代理
gsettings set org.gnome.system.proxy mode \'manual\'
gsettings set org.gnome.system.proxy.http host "'127.0.0.1'"
gsettings set org.gnome.system.proxy.http port 7890
gsettings set org.gnome.system.proxy.https host "'127.0.0.1'"
gsettings set org.gnome.system.proxy.https port 7890
gsettings set org.gnome.system.proxy.socks host "'127.0.0.1'"
gsettings set org.gnome.system.proxy.socks port 7891

# 电源
## 电源模式
# gsettings set org.gnome.shell last-selected-power-profile "'power-saver'"
## 常规 (电源按钮行为)
# gsettings set org.gnome.settings-daemon.plugins.power power-button-action \'nothing\'
## 节电
### 自动熄屏
# gsettings set org.gnome.desktop.session idle-delay 'uint32 0'
### 自动挂起
# gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type \'nothing\'

# 多任务
gsettings set org.gnome.mutter dynamic-workspaces false

# 鼠标
gsettings set org.gnome.desktop.peripherals.mouse accel-profile \'flat\'

# 键盘
## 输入源 (推荐手动配置, 需提前安装 ibus-rime)
# gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us+colemak'), ('ibus', 'rime')]"
## 输入源切换
gsettings set org.gnome.desktop.input-sources per-window true
## 特殊字符输入 (同时交换 lalt 和 lwin)
gsettings set org.gnome.desktop.input-sources xkb-options "['altwin:swap_lalt_lwin', 'lv3:ralt_alt']"
## 键盘快捷键
### 导航
gsettings set org.gnome.desktop.wm.keybindings switch-panels '@as []'
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward '@as []'
gsettings set org.gnome.desktop.wm.keybindings switch-applications '@as []'
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward '@as []'
gsettings set org.gnome.desktop.wm.keybindings cycle-group '@as []'
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward '@as []'
gsettings set org.gnome.desktop.wm.keybindings switch-group '@as []'
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward '@as []'
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels '@as []'
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward '@as []'
### 打字
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift><Control>space']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Control>space']"
### 无障碍
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-in '@as []'
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier '@as []'
gsettings set org.gnome.settings-daemon.plugins.media-keys screenreader '@as []'
gsettings set org.gnome.settings-daemon.plugins.media-keys magnifier-zoom-out '@as []'
### 窗口
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Alt><Super>n']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Alt><Super>o']"
gsettings set org.gnome.desktop.wm.keybindings begin-resize '@as []'
gsettings set org.gnome.desktop.wm.keybindings close "['<Shift><Super>q']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize '@as []'
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Alt><Super>f']"
gsettings set org.gnome.desktop.wm.keybindings begin-move '@as []'
### 系统
gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Control><Super>l']"
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>d']"
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Super>r']"
gsettings set org.gnome.settings-daemon.plugins.media-keys logout '@as []'
### 活动概览键
gsettings set org.gnome.mutter overlay-key "''"
