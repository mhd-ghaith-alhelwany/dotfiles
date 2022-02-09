if [[ ! $(command sudo cat $HOME/.bashrc | grep bash_append) ]]; then
    line="$HOME/.bash_append"
    sudo sh -c "echo '\n$line' >> $HOME/.bashrc"
fi