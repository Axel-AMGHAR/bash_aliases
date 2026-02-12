# -------------------------------------------------------------------
# GENERAL & SYSTEM
# -------------------------------------------------------------------

# Human readable sizes
alias ll='ls -lh'
# Show hidden files
alias la='ls -lAh'
alias src='source ~/.bashrc'
alias al='vim ~/.bash_aliases && src'

# Create a directory and enter it immediately
mkcd () {
    mkdir -p "$1" && cd "$1"
}

fd () {
    find . -iname "*$@*"
}

# With line numbers / recursive / case insensitive
sgr () { 
    grep -nri "$@" . 
}

sdir () {
    du -sh "$@"
}

sfile () {
    du -bsh "$@"
}

# Back
# alias '.' is already used to define the current path
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# ROUTES
alias c='cd /mnt/c'
alias h='cd ~'
alias home='h'
alias doc='cd /mnt/c/Users/aamghar/Documents'
alias www='cd /mnt/c/HS_DEV/WebDev'
alias sites='cd /mnt/c/laragon/www'

# Node
alias deno='/home/alex/.deno/bin/deno'

# Git
alias gsh='git show'
alias gs='git status'
alias gp='git pull'
alias ga='git add .'
alias gps='git push'
alias grh='git reset HEAD'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate'

# Check which remotes are set (Great for GitHub vs GitLab clarity)
alias gr='git remote -v'

gc () {
    if [ -z "$1" ]; then
        git commit
    else
        git commit -m "$1"
    fi
}

gacp () {
    echo "Staging all files..."
    git add .
    gc "$@"
    gps
}

gcl () {
    git clone "$1"
}

glog () {
    git log --graph --pretty=format:'%Cred%h%Creset - %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}

alias gres='git reset'
alias gb='git branch'

gnb () {
    git checkout -b "$1"
}

gch () {
    git checkout "$1"
}

gchm () {
    git checkout main
}

gm () {
    git merge "$1"
}

# Npm
alias ni='npm install'
alias nrw='npm run watch'
alias nrwp='npm run watch-poll'
alias wp='nrwp'
alias nrb='npm run build'
alias nrs='npm run start'
alias nrd='npm run dev'
alias nrp='npm run prod'
alias nrh='npm run hot'

# Yarn
alias yrd="yarn run dev"
alias yrw="yarn run watch"
alias yrwp="yarn run watch-poll"
alias yrh="yarn run hot"
alias yrp="yarn run production"

# Vendor
alias codecept='vendor/bin/codecept'
alias phpspec='vendor/bin/phpspec'
alias phpunit='vendor/bin/phpunit'

# Youtube
alias songs='cd /mnt/c/Users/alex8/Music/new_p'

yt () {
    yt-dlp -x --audio-format mp3 --embed-metadata -o "%(title)s.%(ext)s" "https://www.youtube.com/watch?v=$1"
}

yt_old () {
    youtube-dl -x --audio-format mp3 --add-metadata "https://youtube.com/watch?v=$@"
}

alias ytu='sudo youtube-dl -U'

se () {
    node_modules/.bin/sequelize "$@"
}

ne () {
    node_modules/.bin/nest "$@"
}

alias ci='composer install'
alias cu='composer update'
alias cda='composer dump-autoload'

# Symfony
alias sym='php bin/console'
alias s:n='symfony new --version=4.4 --full'
alias m:c='sym make:controller'
alias m:e='sym make:entity'
alias m:u='sym make:user'
alias c:d='sym doctrine:database:create'
alias m:m='sym make:migration'
alias d:d='sym doctrine:database:drop --force'
alias mi:m='sym doctrine:migration:migrate --no-interaction'
alias m:f='sym make:fixtures'
alias f:l='sym doctrine:fixtures:load --no-interaction'
alias u:s='sym doctrine:schema:update --force'
alias mmf='m:m && mi:m && f:l'

d:q:s () {
    sym doctrine:query:sql "$1"
}

# LARAVEL
art () {
    php artisan "$@"
}

alias tinker='php artisan tinker'
alias route='php artisan route:list'

e:c () {
    art elasticsearch:create_index "$1"
}

e:u () {
    art elasticsearch:update_index "$1"
}

e:b () {
    art elasticsearch:bulk_index_all "$1"
}

sync_notes () {
    echo "Syncing Notes..."
    cd /mnt/c/Users/aamghar/Documents/notes && gacp "Daily sync: $(date +%Y-%m-%d)"
}

end_the_day () {
    cd ~
    gacp
    echo "Day ended at $(date)"
}
