#!/bin/bash

DIR=$(dirname $0)
rsync -a --exclude-from=$DIR/.gitignore $DIR/{root,$(uname)}/ ~/
