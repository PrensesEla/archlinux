ip link
ping archlinux.org
timedatectl set-ntp true
lsblk
fdisk -l
nano /etc/ssh/sshd_conf
systemctl start sshd.service
ifconfig
lsblk
lsblk -l
lsblk -f
cgdisk /dev/sda
lsblk -l
lsblk -f
mkswap -L Arch_Swap /dev/sda1
mkfs.ext4 -L Arch_Root /dev/sda2
lsblk -f
swapon /dev/sda1
lsblk -f
ls /mnt
mount /dev/sda2 /mnt
ls /
nano /etc/pacman.d/mirrorlist
pacstarp /mnt base base-devel linux vim networkmanager net-tools
ls /mnt
genfstab -U /mnt >> /mnt/etc/fstab
nano /mnt/etc/fstab
arch-chroot /mnt
date
ls -sf /usr/share/zoneinfo/Europe/Istambul /etc/localtime
hwclock --systohc
date
nano /etc/locale.gen
nano /etc/locale.conf
locale-gen
nano /etc/vconsole.conf
nano /etc/hostname
nano /etc/hosts
mkinitcpio -P
passwd
pacman -S --needed xorg sddm
pacman -S --needed plasma kde-applications
sudo systemctl enable sddm
sudo systemctl enable NetworkManager
sudo nano /usr/lib/sddm/sddm.conf.d/default.conf
pacman -Sy grub
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
update-grub
ls /boot
cat /etc/fstab
lsblk -f
exit
umount -R /mnt
reboot
