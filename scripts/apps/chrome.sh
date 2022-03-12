if [[ $(command dpkg -l | grep google-chrome) ]]; then
    echo "chrome was found. skipping"
else
    echo "downloading chrome deb file"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    echo "installing chrome"
    sudo apt install ./google-chrome-stable_current_amd64.deb
    echo "removing chrome deb file"
    sudo rm ./google-chrome-stable_current_amd64.deb 
fi