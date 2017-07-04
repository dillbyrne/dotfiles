#!/bin/bash

create_symlinks(){
	# vim
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc

	# git
	ln -s ~/dotfiles/gitconfig ~/.gitconfig
}



main(){
    create_symlinks
}

main
