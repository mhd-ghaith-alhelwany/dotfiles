apt_packages=( gnome-terminal ubuntu-gnome-desktop nautilus gdm )
for i in "${apt_packages[@]}"
do
    if [[ ! $(command dpkg -l | grep $i) ]]; then
        echo "$i was not found. skipping"
    else
        echo "removing $i"
        sudo apt-get purge "*$i*" -y > /dev/null
    fi
done
echo "removing unused packages"
sudo apt-get autoremove -y > /dev/null
sudo apt-get autoclean -y > /dev/null