#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[0;96m\]\t \[\e[0;1;96m\][\[\e[0m\]\w\[\e[0;1;96m\]]\[\e[0;1;96m\]$ \[\e[0m\]'

alias ls='ls -G --color=auto --group-directories-first -v'
alias r="radian"
alias installed="pacman -Q | grep "

export PATH="$HOME/bin:$HOME/.local/bin/:$PATH"
export EDITOR=/bin/nano
export TERM=terminator

export M="$HOME/Documents/ETH/MASTER_THESIS/"
export Mc="$HOME/Documents/ETH/MASTER_THESIS/code"
export Ml="$HOME/Documents/ETH/MASTER_THESIS/latex"
export Mb="$HOME/Documents/ETH/MASTER_THESIS/beamer"


