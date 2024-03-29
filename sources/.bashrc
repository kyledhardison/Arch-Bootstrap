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
alias cl='clear'
alias vi='nvim'
alias sudo='sudo '
alias g='git'
alias f='fg'

alias ,='cd ..'
alias ,,='cd ../..'
alias ,,,='cd ../../..'
alias ,,,,='cd ../../../..'
alias ,,,,,='cd ../../../../..'

# disable ctrl+s to lock the terminal
stty -ixon

# Set vi mode
set -o vi

export HISTIGNORE='l:ls:la:c:cl:f:,:,,:,,,:,,,,:,,,,,'
export PATH="$HOME/.local/bin:/home/kyle/.cargo/bin:$PATH"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export BROWSER=/usr/bin/brave
source /usr/share/bash-completion/bash_completion

###############################################################################
# FUNCTIONS
###############################################################################

# Refresh all audio devices - useful when hot swapping
refresh-audio() { pacmd unload-module module-udev-detect && pacmd load-module module-udev-detect; }

# Extract zip files from thingiverse and remove everything except for the relevant STLs
extract-thingiverse () { unzip -j $1 && find . -type f ! -name "*.stl" -exec rm {} +; }

