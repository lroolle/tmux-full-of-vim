#!/bin/bash

trap exit ERR

tmux_version=$(tmux -V | grep -Po '(?<=tmux )(.+)')

if [[ $tmux_version < 2.4 ]]
then
    echo "Your tmux version is $tmux_version, please upgrade to version > 2.4 ):-"
    echo
    exit 1
fi

if [[ -d $HOME/.tmux  ]]
then
    echo .tmux already exist
    mv $HOME/.tmux $HOME/.tmux.bak
fi

if [[ -e $HOME/.tmux.conf  ]]
then
    echo .tmux.conf already exist
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi

echo "Linking .tmux to ~/.tmux"
ln -s -f $PWD/.tmux $HOME/.tmux
echo "Linking .tmux.conf to ~/.tmux.conf"
ln -s -f $HOME/.tmux/.tmux.conf $HOME/.tmux.conf

git submodule init && git submodule update

echo "Install sucessfully, enjoy (-:"
