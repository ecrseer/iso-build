#!/bin/bash

#enable aur no pamac
sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
#lxc versao correta
pacman -U https://archive.archlinux.org/packages/path/lxc-1:4.0.10-2-x86_64.pkg.tar.zst


pamac install waydroid && waydroid init -s GAPPS
pacman -S docker
usermod -aG docker $USER
