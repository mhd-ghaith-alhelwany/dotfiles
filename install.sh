#!/usr/bin/bash
sudo add-apt-repository ppa:regolith-linux/release -y
sudo apt update
sudo apt-get install i3-gaps i3lock-fancy feh xss-lock rofi kitty fonts-font-awesome light i3blocks thunar blueman lxappearance nodm -y
sudo apt-get purge --auto-remove gnome-terminal ubuntu-gnome-desktop gnome-shell gdm nautilus gnome-help
sudo apt-get autoremove 
sudo cp dotfiles/.config/* $HOME/.config -r
sudo cp dotfiles/.themes/* $HOME/.themes -r
sudo cp dotfiles/.icons/* $HOME/.icons -r