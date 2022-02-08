export PATH="/usr/local/sbin:$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH"

export ZSH="$HOME/.config/oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
export VIRTUAL_ENV_DISABLE_PROMPT=1

DISABLE_UPDATE_PROMPT="true"
HIST_STAMPS="dd.mm.yyyy"

plugins=(git nvm yarn rust zsh-syntax-highlighting)

if [[ $(uname) == "Darwin" ]]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/opt/gnu-tar/libexec/gnubin:$PATH"
fi

if [[ -f "$ZSH/oh-my-zsh.sh" ]]; then
  # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
  ZSH_THEME="min"

  source $ZSH/oh-my-zsh.sh
  autoload -Uz compinit && compinit
else
  source $ZSH/custom/*.zsh
fi

if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
fi
if type starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

export PATH="$(yarn global bin):$HOME/.poetry/bin:$HOME/.local/bin:$PATH"
