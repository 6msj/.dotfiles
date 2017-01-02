#!/bin/bash

echo "updating git submodules"
git submodule update --init --recursive

if [ -d $HOME/.emacs.d ];
then
    echo "moving $HOME/.emacs.d to $HOME/.emacs.d_backup"
    mv $HOME/.emacs.d $HOME/.emacs.d_backup
fi

if [ -d $HOME/.zsh ];
then
    echo "moving $HOME/.zsh to $HOME/.zsh_backup"
    mv $HOME/.zsh $HOME/.zsh_backup
fi

if [ -d $HOME/.vim ];
then
    echo "moving $HOME/.vim to $HOME/.vim_backup"
    mv $HOME/.vim $HOME/.vim_backup
fi

# Copy directories instead of linking them.
# This is because the directories are git repositories anyway.
# When updating one location, updating the other will just be a pull.
echo "copying $HOME/.dotfiles/.emacs.d to $HOME/.emacs.d"
cp -r $HOME/.dotfiles/.emacs.d $HOME/.emacs.d
echo "copying $HOME/.dotfiles/.zsh to $HOME/.zsh"
cp -r $HOME/.dotfiles/.zsh $HOME/.zsh
echo "copying $HOME/.dotfiles/.vim to $HOME/.vim"
cp -r $HOME/.dotfiles/.vim $HOME/.vim

echo "linking .tmux.conf to $HOME/.tmux.conf"
ln -s $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

echo "calling setup for zsh"
$HOME/.zsh/setup.sh
