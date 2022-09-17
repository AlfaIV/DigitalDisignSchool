#!/bin/bash

#sudo apt-get update
#sudo apt-get upgrade
#sudo apt-get install vim && git && tmux

cd .

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git config --global user.email "alfaiv@yandex.ru"
git config --global user.name "Alfaiv"

cp .vimrc ~/.vimrc 
cp -r .ssh ~/.ssh
