#!/bin/bash

packerCmd='packer -S --noconfirm --noedit'

$packerCmd visual-studio-code-bin
$packerCmd numix-square-icon-theme-git
$packerCmd numix-gtk-theme
$packerCmd skypeforlinux-bin
$packerCmd google-chrome
$packerCmd tilix
$packerCmd spotify
$packerCmd jdk8