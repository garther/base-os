#!/bin/bash

pacmanCmd='sudo pacman -S  --noconfirm --needed'

#Printer
$pacmanCmd cups cups-pdf ghostscript gsfonts libcups hplip system-config-printer

#Sound
$pacmanCmd pulseaudio pulseaudio-alsa pavucontrol alsa-utils alsa-plugins alsa-lib alsa-firmware \
    gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly gstreamer

#Services
sudo systemctl enable org.cups.cupsd.service