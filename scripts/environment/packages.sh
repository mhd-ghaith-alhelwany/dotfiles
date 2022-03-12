echo "updating package list"
sudo apt-get update 

apt_packages=( feh xss-lock rofi kitty fonts-font-awesome i3blocks thunar blueman lxappearance pasystray brightnessctl zsh )
for i in "${apt_packages[@]}"
do
    if [[ $(command dpkg -l | grep "$i ") ]]; then
        echo "$i was found. skipping"
    else
        echo "installing $i"
        sudo apt-get install "$i" -y 
    fi
done
