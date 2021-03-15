# GENERAL
alias ll='ls -l'
alias find_file='find . -iname'
fd () {
	find . -iname *$1*
}
# ROUTES
alias www='cd "/mnt/c/wamp64/www/"'
alias miw='www && cd MIW'
alias m1='www && cd MASTER_1'
alias sr='source ~/.bashrc'
alias al='vim ~/.bash_aliases && source ~/.bashrc'
alias deno='/home/alex/.deno/bin/deno'

#alias git
alias gsh='git show'
alias gs='git status'
alias gp='git pull'
alias ga.='git add .'
alias gc='git commit'
alias gps='git push'
alias gacp='ga. ;gc ;gps;'
alias grh='git reset HEAD'
alias gd='git diff'
alias gcl='git clone'
#undo all git add
alias gr='git reset'

#branch 
alias gb='git branch'
alias gch='git checkout'
alias gnb='git checkout -b'
alias gm='git merge'

#back
alias .='cd ..'
alias ..='cd "../.."'
alias ...='cd "../../.."'
alias ....='cd "../../../.."'

#Youtube
alias songs='cd "/mnt/c/Users/alex8/Music/new_p"'
yt () {
	youtube-dl -x --audio-format mp3 --add-metadata https://youtube.com/watch?v=$@
}
alias ytu='sudo youtube-dl -U'

#sequelize cli
se (){
	./node_modules/.bin/sequelize $@
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
