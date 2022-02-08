#!/bin/bash

DIR=$(dirname $(realpath $0))
rsync -a --exclude-from=$DIR/.gitignore $DIR/{root,$(uname)}/ ~/ 2>/dev/null
