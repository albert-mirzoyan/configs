dirpath=$(dirname $(realpath $0))

echo -e "\nif [ -f $dirpath/.bashrc ]; then\n    source $dirpath/.bashrc\nfi" >> ~/.bashrc
ln -f $dirpath/starship.toml ~/.config/starship.toml
ln -f $dirpath/.screenrc ~/.screenrc
ln -f $dirpath/.inputrc ~/.inputrc
ln -f $dirpath/.tmux.conf ~/.tmux.conf
. ~/.bashrc
