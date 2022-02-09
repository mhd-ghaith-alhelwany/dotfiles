if [[ ! $(command dpkg -l | grep picom) ]]; then
    sudo apt-get install gcc libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson > /dev/null
    git clone https://github.com/yshui/picom > /dev/null
    meson --buildtype=release ./picom build > /dev/null
    ninja -C ./picom/build > /dev/null
    rm -r picom
else
    echo "picom already installed. skipping"
fi