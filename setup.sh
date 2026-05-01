#!/bin/bash

# .config
mkdir -p ~/.config
cp --recursive --verbose --force ./config/* ~/.config

# Wallpaper
cp --verbose --force ./fehbg ~/.fehbg

# xinitrc
cp /etc/X11/xinit/xinitrc ~/.xinitrc
for i in {1..5}; do sed -i '$d' ~/.xinitrc; done 
echo "xrandr -s 1920x1080" >> ~/.xinitrc
echo -n "exec bspwm" >> ~/.xinitrc

# bashrc
bash -c "cat ./bashrc >> ~/.bashrc"

# bash_profile
bash -c "cat ./bash_profile >> ~/.bash_profile"
