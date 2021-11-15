#!/bin/bash

sudo apt install vim cargo openssh-server zsh -y
# oh-my-zsh
export ZSH="$HOME/.config/oh-my-zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# nvm
wget -O- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install --lts
# conda
sh <(wget -qO- https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)
# exa
cargo install exa
./update.sh
