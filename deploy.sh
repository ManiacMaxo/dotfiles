#!/bin/sh

git pull
rsync -a --exclude={'.git', 'README.md', 'deploy.sh'} . ~/
