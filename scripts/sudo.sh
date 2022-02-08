if [[ ! $(command sudo cat /etc/sudoers | grep $USER) ]]; then
    line="$USER ALL=(ALL) NOPASSWD:ALL"
     sudo sh -c "echo '\n$line' >> /etc/sudoers"
fi