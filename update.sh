#!/bin/bash

if [[ $(uname) == "Darwin" ]]; then
    PATH="$PATH:/opt/homebrew/bin:/opt/homebrew/sbin"
fi

DIR=$(dirname $(realpath $0))
rsync -a --exclude-from=$DIR/.gitignore $DIR/{root,$(uname)}/ ~/ 2>/dev/null
