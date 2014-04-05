#!/bin/bash
# make symlinks to these dotfiles
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/dircolors ~/.dircolors
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitconfig ~/.gitconfig



ln -s ~/dotfiles/vim -T /root/.vim
ln -s ~/dotfiles/config/htop -t /root/.config
