# better lambda theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

function info {
    if [[ -n "$CONDA_DEFAULT_ENV" ]]; then
        echo "%{$fg[green]%}‹${CONDA_DEFAULT_ENV}›%{$reset_color%}"
    elif [[ -n "$VIRTUAL_ENV" ]]; then
        echo "%{$fg[green]%}‹${VIRTUAL_ENV:t}›%{$reset_color%}"
    fi
}

PROMPT="λ %~/ $(git_prompt_info)%{$reset_color%}"
RPROMPT="$(info)"
