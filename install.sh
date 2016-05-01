#!/bin/sh

PWD=$(pwd)

ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.vimrc ~/.vimrc

# install oh my fish:
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish
