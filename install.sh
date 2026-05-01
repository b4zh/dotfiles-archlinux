#!/bin/bash

otros="zsh zsh-syntax-highlighting"

programas="firefox gvim keepassxc bspwm sxhkd polybar base-devel base fakeroot yazi lsd bat tree inetutils xclip xf86-video-intel xf86-video-vesa xorg xorg-xinit feh fastfetch openvpn pavucontrol pulseaudio blueman iwd net-tools iputils btop gtop htop fzf git curl wget redshift rofi glow md-tui mdfried tldr fish ttf-mononoki-nerd openssh scrot"

pacman -Syu &&
pacman -S $programas
