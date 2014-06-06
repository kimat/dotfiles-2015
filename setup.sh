#!/bin/bash


# make symlinks to these folders
ln -s ~/dotfiles/vim -T ~/.vim
ln -s ~/dotfiles/bin /usr/local/bin
ln -s ~/dotfiles/bak ~/.bak
ln -s ~/dotfiles/fzf ~/.fzf

# make symlinks to these dotfiles
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmuxifier ~/.tmuxifier
ln -s ~/dotfiles/tmuxifier/bin/tmuxifier ~/dotfiles/bin/tmuxifier
ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/dircolors ~/.dircolors
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/config/htop -t /root/.config

