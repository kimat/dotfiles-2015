#!/bin/bash


# make symlinks to these folders
ln -s ~/dotfiles/vim -T ~/.vim
ln -s ~/dotfiles/bak ~/.bak
ln -s ~/dotfiles/fzf ~/.fzf
ln -s ~/dotfiles/bin ~/bin

# make symlinks to these dotfiles
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/fzf.bash ~/.fzf.bash
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

# Vim
# Vim.NeoBundle : If no such dir : ~/.vim/bundle
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
# Vim.ctrl-space
ln -s ~/dotfiles/cs_workspaces ~/dotfiles/.git/cs_workspaces

