#!/bin/bash

# make symlinks to these folders
ln -s ~/dotfiles/vim -T ~/.vim
ln -s ~/dotfiles/fzf ~/.fzf
ln -s ~/dotfiles/bin ~/bin

# make symlinks to these dotfiles
ln -s ~/dotfiles/profile ~/.profile
ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/fzf.bash ~/.fzf.bash
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmuxifier ~/.tmuxifier
ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/dircolors ~/.dircolors
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/config/htop -t ~/.config

# Vim
# Vim.NeoBundle : If no such dir : ~/.vim/bundle
if ! [ -d "~/.vim/bundle" ]; then
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

# Vim.ctrl-space
ln -s ~/dotfiles/cs_workspaces ~/dotfiles/.git/cs_workspaces

exec bash -l
