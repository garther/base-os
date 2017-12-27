#!/bin/bash

pacmanCmd='sudo pacman -S  --noconfirm --needed'

$pacmanCmd grep sed bash curl pacman jshon expac
$pacmanCmd vim wget mc nano htop iftop curl git

cd /tmp/
wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=packer
mv PKGBUILD\?h\=packer PKGBUILD
makepkg
sudo pacman -U packer-*.pkg.tar.xz