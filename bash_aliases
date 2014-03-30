#!/bin/bash

# GIT ALIASES
alias g="git"
alias ga="git add "
alias gs="git status"
alias gc="git commit -m "
alias gl="git log --graph --abbrev-commit --decorate --format=format:\
'%C(bold blue)%h%C(reset)'\
' - '\
'%C(white)%s%C(reset)'\
 --all"
# '%C(bold cyan)%ar %C(reset)'\
# '%C(bold yellow)%d%C(reset)'\
# '%C(dim white)- %an%C(reset)'\



alias gll="git log --no-pager --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"


fh() {
  eval $(history)
}
bind '"\C-F:"fh\n"'
