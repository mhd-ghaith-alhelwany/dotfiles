if [[ ! $(command dpkg -l | grep i3-gaps) ]]; then
    sudo add-apt-repository ppa:regolith-linux/release -y
    sudo apt update
    sudo apt-get install i3-gaps
else
    echo "i3-gaps already installed. skipping"
fi