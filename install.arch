```sh
timedatectl set-ntp true
fdisk -l 找到硬盘(如/dev/sda)
fdisk /dev/sda
```
(m时)
	o
	n
	p
	w
(其他)回车
```
mkfs.ext4 /dev/sda1 #(挂载)
ls /mnt #(检查lost+found文件)
pacstrap /mnt base base-devel linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >>/etc/locale.gen
echo "zh_CN.UTF-8 UTF-8" >/etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >/etc/locale.conf
echo "arch" >/etc/hostname
curl archserver.top/hosts -L >/etc/hosts
mkinitcpio -P
passwd #设置密码
pacman -S grub dhcpcd
systemctl enable dhcpcd
grub-install --target=i386-pc /dev/sda # grub-install --target=x86_64-efi --efi-directory=esp --bootloader-id=GRUB
grub-mkconfig >/boot/grub/grub.cfg
exit
umount -R /mnt
reboot
#拔掉U盘
useradd -m inkuniverse
echo "inkuniverse ALL=(ALL) ALL" >>/etc/sudoers
passwd inkuniverse


# 桌面
pacman -Syyu
pacman -S plasma-meta kde-applications-meta
pacman -S xorg
systemctl enable sddm

reboot
```
