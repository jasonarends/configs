#! /usr/bin/bash

mv ~/.tcshrc ~/.tcshrc-old
mv ~/.vim ~/.vim-old
mv ~/.p10k.zsh ~/.p10k.zsh-old
mv ~/.config/neofetch ~/.config/neofetch-old
mv ~/.zshrc ~/.zshrc-old
mv ~/.vimrc ~/.vimrc-old

ln -s ~/configs/.vim ~/
ln -s ~/configs/.tcshrc ~/
ln -s ~/configs/.p10k.zsh ~/
ln -s ~/configs/neofetch ~/.config/
ln -s ~/configs/.zshrc ~/
