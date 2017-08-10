#!/bin/bash
# Master install script for symlinking and vim setup.

./make_symlinks.sh

# Install vim plugin manager - Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vim plugins using Vundle
vim +PluginInstall +qall
