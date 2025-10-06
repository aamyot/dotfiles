#!/usr/bin/env zsh

if [ -f ~/.zshrc ]; then
	mv ~/.zshrc ~/.zshrc.bak
fi

if [[ $(command -v brew) == "" ]]; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

ln -sf ~/dotfiles/zshrc ~/.zshrc

case $( uname -s ) in
	Linux) /bin/sh ./setup_linux;;
	Darwin) /bin/sh ./setup_mac;;
	*)     echo other;;
esac
