#!/bin/bash
#Run this program to set the symlinks for the .bashrc and .emacs, .emacs.d files

cd
if [ ! -f .emacs ];
then
       ln -s dotfiles/emacs/emacs .emacs
fi
if [ ! -f .bashrc ];
then
    ln -s dotfiles/bash/bashrc .bashrc
fi
if [ ! -f .emacs.d ];
then
    mkdir .emacs.d
    mkdir .emacs.d/themes
    ## Copying problem with symlink :/
    cp dotfiles/emacs/emacs.d/themes/zenburn-theme.el .emacs.d/themes/zenburn-theme.el
fi
