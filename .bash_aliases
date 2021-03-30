# GENERAL
alias ll='ls -l'
alias la='ls -la'
alias al='vim ~/.bash_aliases && source ~/.bashrc'
alias c='clear'

function fd () {
	find . -iname *$1*
}

function gr () {
	grep -nri $@ *
}

function sdir () {
	du -sh $@
}

function sfile () {
	du -bsh $@
}

# ROUTES
alias www='cd "/mnt/c/wamp64/www/"'
alias miw='www && cd MIW'
alias m1='www && cd MASTER_1'
alias sr='source ~/.bashrc'
alias deno='/home/alex/.deno/bin/deno'
alias course='cd /mnt/c/Users/alex8/Documents/course/'

#alias git
alias gsh='git show'
alias gs='git status'
alias gp='git pull'
alias ga.='git add .'
alias gps='git push'
alias grh='git reset HEAD'
alias gd='git diff'

function gc () {
	git commit -m "$1"
}

function gacp () {
	ga.;gc $1;gps;
}

function gcl () {
	git clone $1
}

#undo all git add
alias gr='git reset'

#branch 
alias gb='git branch'

function gnb () {
	git checkout -b $1
}

function gch () {
	git checkout $1
}

function gm () {
	git merge $1
}

#back
alias .='cd ..'
alias ..='cd "../.."'
alias ...='cd "../../.."'
alias ....='cd "../../../.."'

#npm
alias nrw='npm run watch'
alias nrwp='npm run watch-poll'
alias nrb='npm run build'
alias nrs='npm run start'
alias nrd='npm run development'
alias nrp='npm run production'
alias nrh='npm run hot'

#Youtube
alias songs='cd "/mnt/c/Users/alex8/Music/new_p"'
yt () {
	youtube-dl -x --audio-format mp3 --add-metadata https://youtube.com/watch?v=$@
}
alias ytu='sudo youtube-dl -U'

#sequelize cli
se ()
{
	node_modules/.bin/sequelize $@
}

nest ()
{
	node_modules/.bin/nest $@
}

#symfony
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
alias c:d='sym doctrine:database:create' 
alias mmf='m:m && mi:m && f:l'

d:q:s () {
	sym doctrine:query:sql "$1"
}

#Laravel
alias art='artisan'

# SFG
#stead
alias dev='cd "/mnt/c/HS_DEV"'
alias dev_h='dev && cd Homestead'
alias dev_w='dev && cd Webdev'

alias stead='dev_h && vim Homestead.yaml'
