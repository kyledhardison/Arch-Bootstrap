#!/bin/bash

# exit on first failure
set -e 

SRC="sources"
cp -r ~/.bashrc  ./$SRC/

cp -r ~/.config/i3/ ./$SRC/.config/
cp ~/.config/nvim/init.lua ./$SRC/.config/nvim/
cp ~/.config/nvim/old_config.vim ./$SRC/.config/nvim/
cp -r ~/.config/nvim/lua ./$SRC/.config/nvim/
cp -r ~/.config/nvim/ftplugin ./$SRC/.config/nvim/
cp -r ~/.config/git ./$SRC/.config
cp ~/.tmux.conf ./$SRC/
