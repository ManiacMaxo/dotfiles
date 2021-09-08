export PATH="/usr/local/sbin:$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH"

export ZSH="$HOME/.config/oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export VIRTUAL_ENV_DISABLE_PROMPT=1

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="min"

DISABLE_UPDATE_PROMPT="true"
HIST_STAMPS="dd.mm.yyyy"

plugins=(git nvm sudo yarn zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
autoload -Uz compinit; compinit

export PATH="$HOME/miniconda3/bin:$(yarn global bin):$PATH"
