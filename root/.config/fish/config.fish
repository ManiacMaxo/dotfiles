set fish_greeting

# fun
alias starwars "nc towel.blinkenlights.nl 23"

# workflow
alias ssh-keygen "ssh-keygen -t ed25519 -a 100"
alias gcce "gcc -Wall -pedantic -std=c11"
alias pip-update "pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias jn "jupyter notebook"
alias server "ssh gorchilov.net"
alias xa "exa -la"
function cra
    npx create-react-app $argv --template typescript-scss
end

set PATH $PATH /usr/local/sbin $HOME/.local/bin $HOME/.cargo/bin

# git aliases
function gcm
    git commit -m (string join ' ' $argv)
end
alias gmain "git checkout main"
alias gmas "git checkout master"
