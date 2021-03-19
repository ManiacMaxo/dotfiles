#!/bin/bash

sudo apt install vim cargo openssh-server zsh -y
# oh-my-zsh
export ZSH="$HOME/.config/oh-my-zsh"
sh <(wget -qO- https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)
# nvm
wget -O- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install node
# conda
sh <(wget -qO- https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)
# exa
cargo install exa
./update.sh