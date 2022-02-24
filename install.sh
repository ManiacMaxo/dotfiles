#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    echo "Mac OS X detected"
    CONDA_INSTALLER="Miniconda3-latest-MacOSX-arm64.sh"
    # homebrew
    curl -fsSL -so- https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
else
    sudo apt install vim openssh-server zsh -y
    CONDA_INSTALLER="Miniconda3-latest-Linux-x86_64.sh"
fi

if [ ! -f ~/.ssh/id_ed25519 ]; then
    echo "Generating SSH key"
    ssh-keygen -t ed25519 -a 100
fi

read -p "Which shell? (Fish/Zsh): " shell
shell=$(echo $shell | tr '[:upper:]' '[:lower:]')

if [[ shell == 'zsh' ]]; then
    # oh-my-zsh
    ZSH="$HOME/.config/oh-my-zsh"
    curl -so- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
elif [[ shell == 'fish' ]]; then
    # fisher plugin manager
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    fish

    curl -fsSL https://starship.rs/install.sh | sh
fi

# rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
~/.cargo/bin/cargo install exa
# nvm
curl -so- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install --lts
# conda
curl -so- https://repo.anaconda.com/miniconda/$CONDA_INSTALLER | sh - -b

./update.sh
