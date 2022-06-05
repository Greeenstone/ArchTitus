# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\[\033[38;5;11m\]\t\[$(tput sgr0)\] \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;11m\][\[$(tput sgr0)\]\w\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;11m\]]\n\\$\[$(tput sgr0)\] "

alias ls='ls -G --color=auto --group-directories-first -v'
alias r="radian"
alias installed="pacman -Q | grep "
alias install="sudo pacman -S"
alias uninstall="sudo pacman -Rns"
alias remove="sudo pacman -Rns"

export PATH=~/.npm-global/bin:$PATH



