file=~/.zshrc
if [[ ! $(command sudo cat $file | grep functions) ]]; then
    line="\n source .aliases"
    sudo sh -c "echo '$line' >> $file"
    line="\n~/.functions\n"
    sudo sh -c "echo '$line' >> $file"
fi