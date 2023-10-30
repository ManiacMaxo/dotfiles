export PATH="/usr/local/sbin:$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

export ZSH="$HOME/.config/oh-my-zsh"
export VIRTUAL_ENV_DISABLE_PROMPT=1

DISABLE_UPDATE_PROMPT="true"
HIST_STAMPS="dd.mm.yyyy"

plugins=(git nvm yarn rust zsh-syntax-highlighting)

if [[ -f "$ZSH/oh-my-zsh.sh" ]]; then
  # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
  ZSH_THEME="min"

  source $ZSH/oh-my-zsh.sh
  autoload -Uz compinit && compinit
else
  source $ZSH/custom/*.zsh
fi
