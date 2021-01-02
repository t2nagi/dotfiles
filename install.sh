#!/bin/bash

# Insert dotfiles
git clone https://github.com/t2nagi/dotfiles.git
cd dotfiles
ROOT_DIR=$(pwd)
for dotfile in `find $ROOT_DIR/home -type f`; do
    echo "source $dotfile" >> $HOME/`basename $dotfile`
done