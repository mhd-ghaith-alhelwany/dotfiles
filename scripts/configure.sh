sudo cp dotfiles/.config $HOME/ -r
sudo cp dotfiles/.fonts $HOME/ -r
sudo cp dotfiles/.icons $HOME/ -r
sudo cp dotfiles/.wallpapers $HOME -r
sudo cp dotfiles/.scripts $HOME -r
sudo chown $USER $HOME/* -R
sudo chmod +x $HOME/.scripts/*