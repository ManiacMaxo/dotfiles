#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    echo "Mac OS X detected"
    CONDA_INSTALLER="Miniconda3-latest-MacOSX-arm64.sh"
    # homebrew
    wget -qO- https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
else
    sudo apt install vim openssh-server zsh -y
    CONDA_INSTALLER="Miniconda3-latest-Linux-x86_64.sh"
fi

if [ ! -f ~/.ssh/id_ed25519 ]; then
    echo "Generating SSH key"
    ssh-keygen -t ed25519 -a 100
fi

# rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
~/.cargo/bin/cargo install exa
# oh-my-zsh
ZSH="$HOME/.config/oh-my-zsh"
wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
# nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install --lts
# conda
# wget -qO- https://repo.anaconda.com/miniconda/$CONDA_INSTALLER | sh

./update.sh
