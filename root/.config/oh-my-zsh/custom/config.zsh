export NVM_DIR=$HOME/.nvm

if [[ $(uname) == "Darwin" ]]; then
    export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
fi

if [[ $- == *i* ]]; then
    nvm use default >/dev/null

    export PATH="$(yarn global bin):$PATH"
fi

if type starship &>/dev/null; then
    starship init zsh | source
fi

if type brew &>/dev/null; then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi

if ls /usr/local/go &>/dev/null; then
    export GOPATH="$HOME/.go"
    export PATH="/usr/local/go/bin:$GOPATH/bin:$PATH"
fi
if type yarn &>/dev/null; then
    export PATH="$(yarn global bin):$PATH"
fi

export PATH="$HOME/.poetry/bin:$HOME/.cargo/bin:$PATH"
