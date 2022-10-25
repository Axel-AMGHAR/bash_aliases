# GENERAL
alias ll='ls -l'
alias la='ls -la'
alias src='source ~/.bashrc'
alias al='vim ~/.bash_aliases && source ~/.bash_aliases'

fd () {
	find . -iname "*$@*"
}

gr () {
	grep -nri $@ *
}

sdir () {
	du -sh $@
}

sfile () {
	du -bsh $@
}

# ROUTES
alias c='cd /mnt/c'
alias h='cd ~'
alias home='h'
alias doc='c && cd Users/aamghar/Documents'
alias www='c && cd HS_DEV/WebDev'

# Node
alias deno='/home/alex/.deno/bin/deno'

# Git
alias gsh='git show'
alias gs='git status'
alias gp='git pull'
alias ga.='git add .'
alias gps='git push'
alias grh='git reset HEAD'
alias gd='git diff'

gc () {
	if [ -z $1]
	then git commit
	else git commit -m "$1"
	fi
}

gacp () {
	echo $@
	echo "$@"
	ga. && gc "$@" && gps
}

gcl () {
	git clone $1
}

glog () {
	git log --graph --pretty=format:'%Cred%h%Creset - %C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}

# Undo all git add
alias gres='git reset'

# Branch 
alias gb='git branch'

gnb () {
	git checkout -b $1
}

gch () {
	git checkout $1
}

gchm () {
	gch main
}

gm () {
	git merge $1
}

# Back
alias .='cd ..'
alias ..='cd "../.."'
alias ...='cd "../../.."'
alias ....='cd "../../../.."'

# Npm
alias nrw='npm run watch'
alias nrwp='npm run watch-poll'
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
alias songs='c && cd "Users/alex8/Music/new_p"'

yt () {
	youtube-dl -x --audio-format mp3 --add-metadata https://youtube.com/watch?v=$@
}

alias ytu='sudo youtube-dl -U'

# Sequelize cli
se () {
	node_modules/.bin/sequelize $@
}

ne () {
	node_modules/.bin/nest $@
}

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
alias c:d='sym doctrine:database:create' 
alias mmf='m:m && mi:m && f:l'

d:q:s () {
	sym doctrine:query:sql "$1"
}

# Laravel
art () {
	php artisan $@
}

### SFG

# Elasticsearch

e:c () {
	art elasticsearch:create_index $1
}

e:u () {
	art elasticsearch:update_index $1
}

e:b () {
	art elasticsearch:bulk_index_all $1
}

## Local
