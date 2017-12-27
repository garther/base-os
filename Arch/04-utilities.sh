#!/bin/bash

pacmanCmd='sudo pacman -S  --noconfirm --needed'

#System
$pacmanCmd dconf-editor
$pacmanCmd dmidecode 
$pacmanCmd gparted 
$pacmanCmd lsb-release mlocate
$pacmanCmd net-tools
$pacmanCmd screenfetch
$pacmanCmd unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller
$pacmanCmd ntfs-3g
$pacmanCmd bash-completion
$pacmanCmd gvfs-smb
$pacmanCmd ttf-dejavu

#Gui
$pacmanCmd conky
$pacmanCmd galculator gksu gnome-disk-utility 
$pacmanCmd gnome-font-viewer gnome-screenshot gnome-system-monitor gnome-terminal gnome-tweak-tool 
$pacmanCmd notify-osd numlockx polkit-gnome 
$pacmanCmd plank
$pacmanCmd keepass

#Multimedia
$pacmanCmd vlc
$pacmanCmd shutter

#Code
$pacmanCmd git subversion
$pacmanCmd meld

#Network
$pacmanCmd whois mtr traceroute
$pacmanCmd filezilla firefox axel
$pacmanCmd networkmanager network-manager-applet networkmanager-openvpn networkmanager-pptp nm-connection-editor
$pacmanCmd iw wireless_tools wpa_supplicant
$pacmanCmd nmap clusterssh

#Administration
$pacmanCmd ansible sshpass
$pacmanCmd remmina rdesktop freerdp

#Services
sudo systemctl enable NetworkManager.service