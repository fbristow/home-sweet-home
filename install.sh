#!/bin/sh

PWD=$(pwd)

mkdir -p ~/.config/fish

ln -s $PWD/.config/fish/config.fish ~/.config/fish/config.fish
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.oh-my-fish ~/.oh-my-fish
ln -s $PWD/.vimrc ~/.vimrc
