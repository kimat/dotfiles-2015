# BOWER
alias bower="bower --allow-root"

# LINUX
alias wget="wget --continue "
alias log="less +F +G "
alias e="fc"

alias ranger='ranger --cmd "set preview_files True"'


# sshl() {
#   egrep '^Host\s(.*)$' ~/.ssh/config | awk '{print $2}' | percol
# }
# alias sshl=sshl

select_a_known_ssh_server() {
  echo `egrep '^Host\s(.*)$' ~/.ssh/config | awk '{print $2}' | peco`
}

tmux_rename_window() {
  B=`tmux display-message -p '#W'`
  if [ "$B" == "bash" ]; then
    tmux rename-window "$1-prod"
  fi
}

s() {
  if [ $# -eq 0 ]; then
    A=$(select_a_known_ssh_server)
  else
    A=$1
  fi
  tmux_rename_window $A
  ssh "$A"
}
alias s=s

# alias s='h =$(egrep "^Host\s(.*)$" ~/.ssh/config | cut -d" " -f2 | percol) ; ssh $h'
# tmux rename-window "$h"
# ssh $h
# alias s="egrep \"^Host\s(.*)$\" ~/.ssh/config | awk '{print $2}' | percol | xargs ssh"

# UBUNTU
alias lso="ls -alG | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'" # octal ls
alias apts="apt-cache search"
alias apti="apt-get install -y --no-install-recommends"
alias aptv="apt-cache madison"
alias aptI="apt-cache madison"
alias aptu="apt-get update"
alias aptU="apt-get --purge autoremove"
alias sl="ls"
alias server="echo python -m SimpleHTTPServer"


# TMUX
alias t="tmux -u attach || ~/dotfiles/bin/tmuxifier s main"
alias tl="tmuxifier-list-windows"
to() {
	tmuxifier-load-window $(tl | percol)
}
alias to=to



# VIM
alias ":e"="vim"
alias rmswp='find -name "*.swp" -delete'

alias vim="nvim"
vv() {
  \vim -c ":CtrlSpaceLoadWorkspace $1"
}
v() {
  vim -c ":CtrlSpaceLoadWorkspace $1"
}

alias vd='v ~/dotfiles dotfiles'
alias vm='v /vagrant md'
alias vt='vim ~/.tmux.conf /vagrant/writing-using/tmux.md ~/.tmuxifier/layouts/main.session.sh'
alias vbt='vim ~/.bash_aliases ~/.bashrc /vagrant/writing-using/unix/unix_bash.md \
  ~/.tmux.conf /vagrant/writing-using/tmux.md ~/.tmuxifier/layouts/main.session.sh'
alias vb='vim ~/.bash_aliases ~/.bashrc /vagrant/writing-using/unix/unix_bash.md'
alias ve='(cd /vagrant/ecam ; vim done.md projects.md ecam.md'

# RUBY ALIASES
alias "f"="foreman start -f Procfile.dev -e /dev/null"
alias "rs"="rails server -b0.0.0.0"
alias "rc"="rails console"
# alias "foreman"="foreman -e /dev/null "
alias "fd"="foreman start -f Procfile.dev -e /dev/null"
alias "re"="echo $RAILS_ENV"
alias bu='bundle update'
alias bi='bundle install'
alias bui='bundle update -j4 ;  bundle install -j4'
# alias buip='bundle update -j4 ;  bundle install -j4 --without development'

# GIT ALIASES
# git config user.email k.boven@ecam.be
# git config user.name BOVEN Kimat
alias gd="tmux resize-pane -Z ; git-icdiff --cached ; tmux resize-pane -Z"
alias gdd="tmux resize-pane -Z ; git-icdiff ; tmux resize-pane -Z"
alias gz="git reset HEAD"
alias gph="git push && git push heroku master"
alias g="git"
# alias gdd="git --no-pager diff"
# alias gd="git --no-pager diff --cached"
alias ga="git add "
alias gal="git add --all"
alias gs="watch -t -n 1 --color git status --short"
alias gm="git commit"
# gc() {
#   git commit -m "$*"
# }
# alias gc=gc
alias gc="git commit"
alias gp="git push"
alias gl="git --no-pager log --graph --abbrev-commit --decorate --format=format:\
'%C(bold blue)%h%C(reset)'\
' - '\
'%C(white)%s%C(reset)'\
 --all\
 | head -n 10"
# '%C(bold cyan)%ar %C(reset)'\
# '%C(bold yellow)%d%C(reset)'\
# '%C(dim white)- %an%C(reset)'\
# @Slipp D. Thompson : [Pretty git branch graphs - Stack Overflow](http://stackoverflow.com/questions/1057564/pretty-git-branch-graphs)

alias gll="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(dim white)(%ar)%C(reset) %C(white)%s%C(reset)' --all"
alias glll="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"


# FZZ ?
fh() {
  eval $(history)
}
bind '"\C-F:"fh\n"'
