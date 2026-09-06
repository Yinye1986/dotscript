```shell
# 磁盘
lsblk
fdisk ${disk}
mkfs.fat -n boot -F 32 ${disk}p1
mkfs.ext4 -L root ${disk}p2
mkswap -L swap ${disk}p3
swapon -L swap ${disk}p3
mount ${disk}p2 /mnt
mount --mkdir ${disk}p1 /mnt/boot

# 换源
# reflector
vim /etc/pacman.conf

# 安装
pacstrap -K /mnt base linux-zen linux-firmware amd-ucode mesa

# fstab
genfstab -U /mnt > /mnt/etc/fstab

# bootloader
bootctl install --esp-path=/mnt/boot

arch-chroot /mnt

# 安装工具
pacman -S --needed --noconfirm sudo helix
ln -sf /usr/bin/helix /usr/bin/hx

# 时区及授时
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc

# 本地化
helix /etc/locale.gen
locale-gen
# echo 'LANG=en_US.UTF-8' >> /etc/locale.conf
# echo 'LC_CTYPE="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_NUMERIC="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_TIME="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_COLLATE="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_MONETARY="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_MESSAGES="zh_CN.UTF-8"' >> /etc/locale.conf
# echo 'LC_PAPER="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_NAME="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_ADDRESS="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_TELEPHONE="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_MEASUREMENT="en_US.UTF-8"' >> /etc/locale.conf
# echo 'LC_IDENTIFICATION="en_US.UTF-8"' >> /etc/locale.conf
echo 'KEYMAP=colemak' > /etc/vconsole.conf

# hostname
echo 'XX-Arch' > /etc/hostname

# 用户配置
helix /etc/sudoers
useradd -m hong
usermod -aG wheel hong
passwd root
passwd hong

# bootloader配置
echo 'title Archlinux' >> /boot/loader/entries/arch.conf
echo 'linux /vmlinuz-linux-zen' >> /boot/loader/entries/arch.conf
echo 'initrd /initramfs-linux-zen.img' >> /boot/loader/entries/arch.conf
echo 'initrd /amd-ucode.img' >> /boot/loader/entries/arch.conf
echo 'options root=UUID=a684d56a-0e31-4fd1-be6a-278e59507dfe rw psi=1' >> /boot/loader/entries/arch.conf
echo 'default arch.conf' >> /boot/loader/loader.conf
echo 'timeout 1' >> /boot/loader/loader.conf
echo 'editor no' >> /boot/loader/loader.conf
echo 'console-mode max' >> /boot/loader/loader.conf
```
