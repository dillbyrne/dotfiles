#!/bin/bash

create_symlinks(){
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
}



main(){
    create_symlinks
}

main
