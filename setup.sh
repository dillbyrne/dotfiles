#!/bin/bash

create_symlinks(){
	# vim
	ln -s ~/dotfiles/vim ~/.vim
	ln -s ~/dotfiles/vim/vimrc ~/.vimrc

	# git
	ln -s ~/dotfiles/gitconfig ~/.gitconfig

	# npm
	ln -s ~/dotfiles/npmrc ~/.npmrc
}



main(){
	create_symlinks
}

main
