#!/bin/bash

if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion
fi

neofetch
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="\[\e[36;1m\]\h:\[\e[32;1m\]\w$ \[\e[0m\]"
export EDITOR=nvim
export HISTCONTROL=ignoredups
HISTSIZE=100000
HISTFILESIZE=100000

shopt -s histappend

PROMPT_COMMAND='history -a'

# export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"



