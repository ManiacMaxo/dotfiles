set fish_greeting
set -x LANG en_US.UTF-8

# fun
alias starwars "nc towel.blinkenlights.nl 23"

# workflow

alias gcce "gcc -Wall -pedantic -std=c11"
alias pip-update "pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias jn "jupyter notebook"
alias server "ssh gorchilov.net"
alias xa "exa -la"
function cra
    npx create-react-app $argv --template typescript-scss
end

export PATH="/usr/local/sbin:$PATH"

# git aliases
alias gcm "git commit -m"
alias gmain "git checkout main"
alias gmas "git checkout master"

if test (uname) = Darwin
    alias boo "brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor"
else if test (uname) = Linux;
    if test (omf list | grep bass)
        function nvm
            bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
        end
        nvm use default --silent
    else
        echo "Install omf and bass to use nvm"
    end
    alias boo "sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove && sudo apt autoclean"
end
