snap_packages=( vlc motrix )
for i in "${snap_packages[@]}"
do
if [[ $(snap list | grep $i) ]]; then
    echo "$i was found. skipping"
else
    echo "installing $i"
    sudo snap install "$i" 
fi
done
