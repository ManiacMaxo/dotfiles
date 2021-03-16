#!/bin/bash

sudo apt install fish vim cargo openssh-server -y
# omf
curl -L https://get.oh-my.fish | fish
omf install bass
# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install node
# miniconda, file has to be created to agree to terms
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o anaconda.sh && bash anaconda.sh && rm anaconda.sh
curl -o- https://fossies.org/linux/misc/conda-4.9.2.tar.gz/conda-4.9.2/conda/shell/etc/fish/conf.d/conda.fish?m=t | fish
echo "eval $HOME/miniconda3/bin/conda \"shell.fish\" \"hook\" $argv | source" > ~/.config/fish/conf.d/conda.fish
# exa
cargo install exa