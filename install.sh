#!/usr/bin/bash
sudo apt-get purge --auto-remove gnome-terminal ubuntu-gnome-desktop gnome-shell gdm nautilus gnome-help
sudo apt-get install i3-gaps i3lock-fancy feh xss-lock rofi kitty fonts-font-awesome light i3blocks thunar blueman lxappearance nodm 
sudo apt-get autoremove 
sudo cp ../.config/* $HOME/.config
sudo cp ../.themes/* $HOME/.themes
sudo cp ../.icons/* $HOME/.icons