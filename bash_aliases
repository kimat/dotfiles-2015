# UBUNTU
alias lso="ls -alG | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'" # octal ls

# TMUX
alias t="tmux -u attach || tmuxifier s main"

# VIM
alias rmswp='find -name "*.swp" -delete'

v() {
  cd $1 ;
  vim -c ":CtrlSpaceLoadWorkspace $2"
}

alias vd='v ~/dotfiles dotfiles'
alias vm='v /vagrant md'
alias vt='vim ~/.tmux.conf /vagrant/writing-using/tmux.md ~/.tmuxifier/layouts/main.session.sh'
alias vbt='vim ~/.bash_aliases ~/.bashrc /vagrant/writing-using/unix/unix_bash.md \
  ~/.tmux.conf /vagrant/writing-using/tmux.md ~/.tmuxifier/layouts/main.session.sh'
alias vb='vim ~/.bash_aliases ~/.bashrc /vagrant/writing-using/unix/unix_bash.md'
alias ve='(cd /vagrant/ecam ; vim done.md projects.md ecam.md'

# RUBY ALIASES
alias bu='bundle update'
alias bi='bundle install'
alias bui='bundle update ;  bundle install'
alias buip='bundle update ;  bundle install --without development'

# GIT ALIASES
alias g="git"
alias gdd="git --no-pager diff"
alias gd="git --no-pager diff --cached"
alias ga="git add "
alias gs="watch -n 1 --color git status --short"
alias gc="git commit -m "
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

alias gll="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"


# FZZ ?
fh() {
  eval $(history)
}
bind '"\C-F:"fh\n"'
