#!/bin/bash

# Insert Homebrew & Git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git
git clone https://github.com/t2nagi/dotfiles.git

# Insert dotfiles
cd dotfiles
ROOT_DIR=$(pwd)
for dotfile in `find $ROOT_DIR/home -type f`; do
    echo "source $dotfile" >> $HOME/`basename $dotfile`
done