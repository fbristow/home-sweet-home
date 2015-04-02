#!/bin/sh

PWD=$(pwd)

FISH=.config/fish
XFCE=.config/xfce4/xfconf/xfce-perchannel-xml
PLNK=.config/plank/dock1

mkdir -p ~/$FISH
mkdir -p ~/$XFCE
mkdir -p ~/$PLNK

ln -s $PWD/$FISH/config.fish ~/$FISH/config.fish
ln -s $PWD/.tmux.conf ~/.tmux.conf
ln -s $PWD/.oh-my-fish ~/.oh-my-fish
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/$XFCE/xfce4-keyboard-shortcuts.xml ~/$XFCE/xfce4-keyboard-shortcuts.xml
ln -s $PWD/$XFCE/xfce4-panel.xml ~/$XFCE/xfce4-panel.xml
ln -s $PWD/$PLNK/settings ~/$PLNK/settings

mkdir -p ~/$PLNK/launchers
for LNCR in $PWD/$PLNK/launchers/* ; do
	ln -s $LNCR ~/$PLNK/launchers/$(basename $LNCR)
done
