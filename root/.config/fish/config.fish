set -gx LANG en_US.UTF-8

fish_add_path \
    /usr/local/sbin \
    $HOME/.cargo/bin \
    $HOME/.local/bin

set NVM_DIR $HOME/.nvm
set VIRTUAL_ENV_DISABLE_PROMPT 1

if status is-interactive
    # Commands to run in interactive sessions can go here
    nvm use default > /dev/null
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
alias docker-ps "docker ps -a --format='table {{.Names}}\\t{{.ID}}\\t{{.Status}}\\t{{.Ports}}'"

alias gcm "git commit -m"

if [ (uname) = Darwin ]
    fish_add_path /opt/homebrew/bin /opt/homebrew/sbin
    fish_add_path $HOME/Library/Python/3.*/bin
    alias boo "brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor"
else
    alias boo "sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove"
end

if [ (which starship) ] 
    starship init fish | source
end