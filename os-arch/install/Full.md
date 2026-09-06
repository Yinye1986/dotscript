```shell
pacman -S --needed --noconfirm brightnessctl
pacman -S --needed --noconfirm usb_modeswitch usbutils
pacman -S --needed --noconfirm iwd
systemctl enable iwd
systemctl enable systemd-networkd
pacman -S --needed --noconfirm openssh
systemctl enable sshd
echo "[Match]" >> /etc/systemd/network/20-wired.network
echo "Name=eno1" >> /etc/systemd/network/20-wired.network
echo "[Network]" >> /etc/systemd/network/20-wired.network
echo "DHCP=yes" >> /etc/systemd/network/20-wired.network
echo "[Match]" >> /etc/systemd/network/21-wlan0.network
echo "Name=wlan0" >> /etc/systemd/network/21-wlan0.network
echo "[Network]" >> /etc/systemd/network/21-wlan0.network
echo "DHCP=yes" >> /etc/systemd/network/21-wlan0.network
pacman -S --needed --noconfirm bluez bluez-utils
systemctl enable bluetooth
pacman -S --needed --noconfirm pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber pavucontrol
# $ systemctl enable --user pipewire
# $ systemctl enable --user pipewire-pulse

pacman -S --needed --noconfirm base-devel
pacman -S --needed --noconfirm git wget curl aria2
pacman -S --needed --noconfirm zip unzip p7zip
pacman -S --needed --noconfirm fish
pacman -S --needed --noconfirm fastfetch btop
#------------------------------------------------------------------------------
sudo pacman -S --needed --noconfirm adobe-source-han-serif-cn-fonts adobe-source-han-sans-cn-fonts \
                                    ttf-ubuntu-nerd ttf-ubuntu-mono-nerd \
                                    noto-fonts-emoji
pacman -S --needed --noconfirm niri
pacman -S --needed --noconfirm swaybg
pacman -S --needed --noconfirm polkit polkit-gnome
pacman -S --needed --noconfirm fuzzel
pacman -S --needed --noconfirm alacritty nautilus
pacman -S --needed --noconfirm yazi
```
