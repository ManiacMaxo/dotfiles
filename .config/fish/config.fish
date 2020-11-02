set fish_greeting

#fun
# alias starwars="nc towel.blinkenlights.nl 23" #outdated

#workflow
alias gcce="gcc -Wall -pedantic -std=c11"
alias server="ssh gorchilov.net"
alias pip_update="pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias jn="jupyter notebook"
export PATH="/usr/local/sbin:$PATH"

#git aliases
alias gommit="git commit -m"
alias gmain="git checkout main"
alias gmas="git checkout master"
