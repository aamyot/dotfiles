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

ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/aws ~/.aws
ln -s ~/dotfiles/direnv ~/.config/direnv

case $( uname -s ) in
	Linux) /bin/sh ./setup_linux;;
	Darwin) /bin/sh ./setup_mac;;
	*)     echo other;;
esac

git config --global user.name "Alex Amyot"
git config --global user.email "alex.amyot@chord.co"
git config --global --add --bool push.autoSetupRemote true
git config --global init.defaultBranch main
