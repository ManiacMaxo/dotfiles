gcm () {
    git commit -m "${(j. .)${:-$argv}}"
}

cra () {
    npx create-react-app $argv --template typescript-scss
}
