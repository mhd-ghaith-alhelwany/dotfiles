apt_packages=( code telegram-desktop qbittorrent )
for i in "${apt_packages[@]}"
do
    if [[ $(command dpkg -l | grep "$i ") ]]; then
        echo "$i was found. skipping"
    else
        echo "installing $i"
        sudo apt-get install "$i" -y
    fi
done
