#!/bin/bash

sudo apt-get install -y build-essential cmake

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/.vim/vimrc
ln ~/.vimrc ~/.vim/vimrc
vim +PluginInstall +qall

curr=`pwd`
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
cd $curr

echo "dont forget to install / update YoucompleteMe"
echo "https://github.com/j1z0/dotfiles.git"

