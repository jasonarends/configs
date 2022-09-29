#! /usr/bin/bash

sudo apt update
sudo apt-get -y -m --show-progress install vim tcsh neofetch wget curl tmux python3 unattended-upgrades snmp zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

~/configs/link.sh

chsh -s /usr/bin/zsh
