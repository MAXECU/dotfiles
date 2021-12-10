#!/bin/bash
# A sample Bash script, by Manoj

# Base-pacakges
#--------------
pacman -Syyu
pacman -S base-devel  bat git htop swaylock sysstat neomutt zathura-pdf-mupdf qt5ct stow --noconfirm

# Intel U-code
#--------------
sudo pacman -S intel-ucode --noconfirm

# Install AUR helper
#--------------
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# file-manager
#--------------
sudo pacman -S ranger thunar

# font
#--------------
sudo pacman -S noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont tilix powerline-fonts ttf-droid ttf-roboto

# terminal
#--------------
sudo pacman -S kitty

## sway-wm
#--------------
sudo pacman -S sway i3blocks swayidle waybar swaylock sysstat grim grmishot wlogout slurp  wf-recorder xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland

# i3-gaps
#--------------
sudo pacman -S i3-gaps i3blocks i3lock feh scrot xclip

# Audio
#--------------
sudo pacman -S pavucontrol pamixer pipewire pipewire-pulse gst-plugin-pipewire
yay -S Easyeffect
systemctl --user enable pipewire.service pipewire-pulse.service

# Application_Launcher_Searchbar
#------------------------------
pacman -S ulauncher --noconfirm

#Brightness control
#----------------------------
#Refer https://danmc.net/posts/sway-backlight/ 
pacman -S light --noconfirm

# Browser
#----------------------------
sudo pacman -S firefox --noconfirm

alias screenrecord='wf-recorder -g "$(slurp)"'

# Clipboard
#--------------
yay -S clipman

