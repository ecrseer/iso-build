#!/bin/bash
echo "paste this on /boot/grub/grub.cfg"
echo "radeon.cik_support=0 amdgpu.cik_support=1 binder.devices=binder,hwbinder,vndbinder,anbox-binder,anbox-hwbinder,anbox-vndbinder psi=1"
#enable aur no pamac
sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
cat IgnorePkg   = greetd-tuigreet
#lxc versao correta
pacman -U https://archive.archlinux.org/packages/path/lxc-1:4.0.10-2-x86_64.pkg.tar.zst


pamac install waydroid && waydroid init -s GAPPS
pacman -S docker
usermod -aG docker $USER
