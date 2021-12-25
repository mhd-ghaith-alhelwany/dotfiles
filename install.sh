#!/usr/bin/bash
sudo add-apt-repository ppa:regolith-linux/release -y
sudo apt update
sudo apt-get install i3-gaps i3lock-fancy feh xss-lock rofi kitty fonts-font-awesome light i3blocks thunar blueman lxappearance -y
# dpkg --remove gnome-terminal ubuntu-gnome-desktop gnome-shell gdm nautilus -y
sudo apt-get autoremove 
sudo cp dotfiles/* $HOME -r