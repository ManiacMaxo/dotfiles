set fish_greeting

#fun
alias starwars "nc towel.blinkenlights.nl 23"

#workflow

##develop
alias gcce "gcc -Wall -pedantic -std=c11"
alias pip_update "pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias jn "jupyter notebook"

##time-saving
alias server "ssh gorchilov.net"
xalias xa "exa -la"

export PATH="/usr/local/sbin:$PATH"

#git aliases
alias gcm "git commit -m"
alias gmain "git checkout main"
alias gmas "git checkout master"

if test (uname) = Darwin
    alias boo "brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor"
else if test (uname) = Linux and test (omf list | grep bass)
    function nvm
        bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
    end
    nvm use default --silent
end