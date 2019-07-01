#!/bin/bash

PWD=$(pwd)

# tmux
ln -sf $PWD/.tmux.conf ~/.tmux.conf

# vim
ln -sf $PWD/.vimrc ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

pushd ~/.vim
git clone --branch v4.6.7 https://github.com/dhruvasagar/vim-table-mode bundle/table-mode
git clone https://github.com/tpope/vim-sensible bundle/vim-sensible
popd

# install oh my fish:
INSTALL=$(mktemp)
curl -o $INSTALL -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install
fish $INSTALL --noninteractive
fish -c "omf install beloglazov"
rm $INSTALL
