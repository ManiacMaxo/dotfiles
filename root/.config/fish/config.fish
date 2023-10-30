set -gx LANG en_US.UTF-8
set fish_greeting

set GOPATH $HOME/.go

fish_add_path \
    /usr/local/sbin \
    $HOME/.cargo/bin \
    $HOME/.local/bin \
    $GOPATH/bin

set NVM_DIR $HOME/.nvm
set VIRTUAL_ENV_DISABLE_PROMPT 1

if status is-interactive
    # Commands to run in interactive sessions can go here
    nvm use default >/dev/null
    fish_add_path (yarn global bin)
end

alias starwars "nc towel.blinkenlights.nl 23"

alias xa "exa -la"
alias ssh-keygen "ssh-keygen -t ed25519 -a 100"
alias jn "jupyter notebook --ip=0.0.0.0"
alias pip-update "pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias gcce "gcc -Wall -pedantic -std=c11"

alias ipe "curl ifconfig.me/ip"
alias nmapa "nmap -A -T4 -p-"
alias pstime "ps -o etime= -p"

alias gcm "git commit -m"

if [ (uname) = Darwin ]
    fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
    alias boo "brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor"
else if [ (uname) = Linux ]
    alias boo "sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove"
end

if [ (which starship) ]
    starship init fish | source
end

if [ (ls $HOME/.miniconda3/ &>/dev/null) ]
    eval /Users/victor/.miniconda3/bin/conda "shell.fish" hook $argv | source
end
