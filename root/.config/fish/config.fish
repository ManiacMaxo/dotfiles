set PATH "/usr/local/sbin:$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$PATH"
set NVM_DIR "$HOME/.nvm"
set VIRTUAL_ENV_DISABLE_PROMPT 1

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias starwars "nc towel.blinkenlights.nl 23"

alias xa "exa -la"
alias ssh-keygen "ssh-keygen -t ed25519 -a 100"
alias jn "jupyter notebook --ip=0.0.0.0"
alias pip-update "pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias gcce "gcc -Wall -pedantic -std=c11"

alias ipe "curl ifconfig.me/ip"
alias nginxr "sudo nginx -s reload"
alias nginxt "sudo nginx -t"
alias nmapa "nmap -A -T4 -p-"
alias pstime "ps -o etime= -p"
alias docker-ps "docker ps -a --format='table {{.Names}}\\t{{.ID}}\\t{{.Status}}\\t{{.Ports}}'"

alias gcm "git commit -m"

function cra
    npx create-react-app $argv --template typescript-scss
end

if [ (uname) = Darwin ]
    set PATH "/opt/homebrew/bin:$PATH"
    alias boo "brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor"
else
    alias boo "sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove"
end

set PATH "(yarn global bin):$PATH"
