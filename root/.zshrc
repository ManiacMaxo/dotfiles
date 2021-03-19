# If you come from bash you might have to change your $PATH.
export PATH="$HOME/.cargo/bin:$(yarn global bin):$HOME/bin:/usr/local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="lambda"
ZSH_THEME="minimal"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

HIST_STAMPS="dd.mm.yyyy"

plugins=(git nvm sudo yarn)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

