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
	cd nerd_fonts || exit 1
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip
	unzip LiberationMono.zip
	rm *Windows* LiberationMono.zip
	cp * ~/.local/share/fonts
	cd - || exit 1

	# copy the fonts to ./local/share/fonts 
	# and refresh the font cache
	./fonts/install.sh

	# delete nerd_fonts dir if you want
	# personally I keep it 
	# rm -rf nerd_fonts

}

setup_packages(){
	# add ./npm-packages/bin to .bashrc path
	# export PATH=$PATH:$HOME/npm-packages/bin

	npm link jshint

}

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
#	create_symlinks
#	setup_fonts
	check_binaries
#	setup_packages
}


main
