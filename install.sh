#!/bin/bash

./update.sh
sudo apt install vim cargo openssh-server -y
# oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# nvm
wget -O- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install node
# conda
sh <(wget -qO- https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh)
# exa
cargo install exa
