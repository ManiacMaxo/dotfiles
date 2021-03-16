#!/bin/bash

case $1 in
    server)
        rsync -a --exclude '.config/' root/ ~/
        ;;
    fish)
        rsync -a --exclude '.bash*' root/ ~/
        ;;
    *)
        rsync -a root/ ~/
        ;;
esac
