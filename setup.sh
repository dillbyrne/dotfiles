#!/bin/bash

check_binaries(){

	#apt-get install flake8 shellcheck exuberant-ctags

	BINS=(flake8 jshint shellcheck ctags-exuberant)

	for i in ${BINS[*]}
	do
		type "$i" >/dev/null 2>&1 ||\
			{ echo >&2 "$i is not installed."; }
	done

}


setup_fonts(){
	mkdir nerd_fonts
	cd nerd_fonts
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip
	unzip LiberationMono.zip
	rm *Windows* LiberationMono.zip
	cp * ~/.local/share/fonts
	cd -

	./fonts/install.sh

}

create_symlinks(){

	#TODO check if symlinks exist

	# vim
	ln -s ~/dotfiles/vim ~/.vim
	ln -s ~/dotfiles/vim/vimrc ~/.vimrc

	# git
	#ln -s ~/dotfiles/gitconfig ~/.gitconfig

	# npm
	#ln -s ~/dotfiles/npmrc ~/.npmrc
}


main(){
#	create_symlinks
	setup_fonts
#	check_binaries
}


main
