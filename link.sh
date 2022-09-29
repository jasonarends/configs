#! /usr/bin/bash

mv ~/.tcshrc ~/.tcshrc-old
mv ~/.vim ~/.vim-old
mv ~/.p10k.zsh ~/.p10k.zsh-old
mv ~/.config/neofetch/config.conf ~/.config/neofetch/config.conf-old

ln -s ~/configs/.vim ~/
ln -s ~/configs/.tcshrc ~/
ln -s ~/configs/.p10k.zsh
ln -s ~/configs/neofetch ~/.config/
