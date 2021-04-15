if [[ $(uname) == "Darwin" ]]; then
    local MINCONDA_DIR="$HOME/.miniconda3"
else
    local MINCONDA_DIR="$HOME/miniconda3"
fi

__conda_setup="$('$MINCONDA_DIR/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$MINCONDA_DIR/etc/profile.d/conda.sh" ]; then
        . "$MINCONDA_DIR/etc/profile.d/conda.sh"
    else
        export PATH="$MINCONDA_DIR/bin:$PATH"
    fi
fi
unset __conda_setup

