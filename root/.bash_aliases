alias xa='ls -alF'
alias jn='jupyter notebook'
alias pip-update="pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U"
alias ssh-keygen='ssh-keygen -t ed25519 -a 100'
alias boo='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove'

gcm () {
    git commit -m (string join ' ' $BASH_ARGV)
}
