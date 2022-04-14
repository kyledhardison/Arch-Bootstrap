#!/bin/bash

# exit on first failure
set -e 

cp -r ~/.config/i3/ ./sources/.config/
cp ~/.config/nvim/init.vim ./sources/.config/nvim/init.vim
cp ~/.tmux.conf ./sources/
cp ~/.gitconfig ./sources
