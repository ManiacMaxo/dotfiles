#!/bin/bash

set -e

function install {
    if [[ $(uname) == "Darwin" ]]; then
        brew install ${@}
    else
        if command -v apt &>/dev/null; then
            sudo apt install ${@} -y
        elif command -v dnf &>/dev/null; then
            sudo dnf install ${@} -y
        elif command -v pacman &>/dev/null; then
            sudo pacman -Sy ${@}
        elif command -v yay &>/dev/null; then
            sudo yay -Sy ${@}
        else
            echo "Unsupported package manager"
            exit 1
        fi
    fi
}

if [[ $(uname) == "Darwin" ]]; then
    # homebrew
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install openssl
else
    install curl git openssh vim
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
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
elif [[ shell == 'fish' ]]; then
    # fisher plugin manager
    install fish
    curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
    fish
else
    echo "Invalid shell"
    exit 1
fi

# starship prompt
if [[ $(uname) == "Darwin" ]]; then
    brew install starship
else

    if command -v pacman &>/dev/null; then
        sudo pacman -Sy starship
    elif command -v nix-env &>/dev/null; then
        sudo nix-env -iA nixpkgs.starship
    elif command -v dnf &>/dev/null; then
        sudo dnf copr enable atim/starship && sudo dnf install starship
    else
        curl -sS https://starship.rs/install.sh | sh
    fi

fi

# rust toolchain
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
~/.cargo/bin/cargo install exa

# nvm
export NVM_DIR=$HOME/.nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install --lts

./update.sh
