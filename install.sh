#!/bin/sh

PWD=$(pwd)

FISH=.config/fish

mkdir -p ~/$FISH

ln -s $PWD/$FISH/config.fish ~/$FISH/config.fish
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.oh-my-fish ~/.oh-my-fish
ln -s $PWD/.vimrc ~/.vimrc

