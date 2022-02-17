sudo cp dotfiles/.config $HOME/ -r
sudo cp dotfiles/.fonts $HOME/ -r
sudo cp dotfiles/.icons $HOME/ -r
sudo cp dotfiles/.wallpapers $HOME -r
sudo cp dotfiles/.scripts $HOME -r

sudo cp dotfiles/.aliases $HOME
sudo cp dotfiles/.functions $HOME
sudo cp dotfiles/.p10k.zsh $HOME

sudo chown $USER $HOME -R
sudo chgrp $USER $HOME -R
sudo chmod +x $HOME/.scripts/*
sudo chmod +x $HOME/.aliases
sudo chmod +x $HOME/.functions
sudo chmod +x $HOME/.p10k.zsh