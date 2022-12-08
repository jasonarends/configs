#! /usr/bin/bash

mv ~/.tcshrc ~/.tcshrc-old
mv ~/.vim ~/.vim-old
mv ~/.p10k.zsh ~/.p10k.zsh-old
mv ~/.zshrc ~/.zshrc-old
mv ~/.vimrc ~/.vimrc-old
mv ~/.tmux.conf ~/.tmux.conf-old
mv ~/.tmux ~/.tmux-old
mv ~/.mostrc ~/.mostrc.old

ln -s ~/configs/.vim ~/
ln -s ~/configs/.tcshrc ~/
ln -s ~/configs/.p10k.zsh ~/
ln -s ~/configs/.zshrc ~/
ln -s ~/configs/.tmux.conf ~/
ln -s ~/configs/.tmux ~/
ln -s ~/configs/.mostrc ~/
