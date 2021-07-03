#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias r='ranger'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias l='ls --color=auto'
alias c='clear -x'
alias vi='nvim'
alias sudo='sudo '

alias ,='cd ..'
alias ,,='cd ../..'
alias ,,,='cd ../../..'
alias ,,,,='cd ../../../..'
alias ,,,,,='cd ../../../../..'

# Set vi mode
set -o vi

export PATH="$HOME/.local/bin:$PATH"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR=/usr/bin/nvim
export BROWSER=/usr/bin/brave
source /usr/share/bash-completion/bash_completion
