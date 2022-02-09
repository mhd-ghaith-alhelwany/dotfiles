echo "updating package list"
sudo apt-get update > /dev/null

apt_packages=( feh xss-lock rofi kitty fonts-font-awesome light i3blocks thunar blueman lxappearance pasystray code brightnessctl telegram-desktop qbittorrent )
for i in "${apt_packages[@]}"
do
    if [[ $(command dpkg -l | grep "$i ") ]]; then
        echo "$i was found. skipping"
    else
        echo "installing $i"
        sudo apt-get install "$i" -y > /dev/null
    fi
done

snap_packages=( vlc )
for i in "${snap_packages[@]}"
do
if [[ $(snap list | grep $i) ]]; then
    echo "$i was found. skipping"
else
    echo "installing $i"
    sudo snap install "$i" > /dev/null
fi
done