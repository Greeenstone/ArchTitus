#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

PS1='\[\e[0;96m\]\t \[\e[0;1;96m\][\[\e[0m\]\w\[\e[0;1;96m\]]\[\e[0;1;96m\]$ \[\e[0m\]'

