#! /usr/bin/bash

mv ~/.tcshrc ~/.tcshrc-old
mv ~/.vim ~/.vim-old

ln -s ~/configs/.vim ~/
ln -s ~/configs/.tcshrc ~/
