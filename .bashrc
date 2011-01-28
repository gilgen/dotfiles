alias ls='ls -F'
alias ll='ls -lFh'
alias l='ls -F'

export PS1="[\u@\h:\w]$ "
export LSCOLORS="Cxfxcxdxbxegedabagacad"
export CLICOLOR="YES"

source ~/.git-prompt.bash
TITLEBAR="${GREEN}\u@\h${COLOR_NONE}"

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

