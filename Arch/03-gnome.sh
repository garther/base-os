#!/bin/bash

pacmanCmd='sudo pacman -S  --noconfirm --needed'

$pacmanCmd gnome gdm
sudo systemctl enable gdm.service