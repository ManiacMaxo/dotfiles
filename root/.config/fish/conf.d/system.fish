if test (uname) = Darwin
    alias boo "brew update && brew upgrade && brew upgrade --cask && brew cleanup && brew doctor"
else if test (uname) = Linux
    if test (omf list | grep bass)
        function nvm
            bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
        end
        nvm use default --silent
    else
        echo "Install omf and bass to use nvm"
    end
    alias boo "sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove"
end
