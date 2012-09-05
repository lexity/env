CLICOLOR=1
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias sshcs="ssh cs61c-sx@hive3.cs.berkeley.edu"
alias cdcs="cd ~/Repositories/cs"
alias mysql=mysql5
alias mysqldump=mysqldump5
alias cdcc="cd ~/Repositories/cc/"
alias cdcc2="cd ~/Repositories/cc2/"
alias cdcc3="cd ~/Repositories/cc3/"
alias cdsv="cd ~/Repositories/sv/"
alias cdsvmain="cd ~/Repositories/sv/html/wp-content/themes/servio"
alias cdenv="cd ~/Repositories/env/mac"
alias powl="echo hello"
alias ls="ls -pFh"
alias e="emacs -nw"
alias amacs="aquamacs"
alias a="amacs"
alias c="choose"
search () {
find . -name \*$1\*
}

jssh () {
ssh -A jon@$1
}

choose () {
PS3="Choose a file to edit: "
select opt in $(find . -name \*$1\*) quit
do
    if [[ $opt = "quit" ]]
    then
	break
    fi
    amacs "$opt" &
    break
    done
}

cmate () {
    PS3="Choose a file to edit: "
    select opt in $(find . -name \*$1\*) quit
    do
    if [[ $opt = "quit" ]]
    then
        break
    fi
    mate "$opt" &
    break
    done
}

tc ()
{
    b=$1;
    if git checkout $b; then
	: true;
    else
	git checkout -b $b;
	git push origin $b;
	git branch --set-upstream $b origin/$b;
    fi
}

newrepo () {
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin git@github.com:sanmiguelje/$1.git
    git push -u origin master
}

sym () {
    mv $1 $2
    ln -s $2$1
}

setupwork () {
    rvm use ree-1.8.7-2011.03@cc
}

setuphome () {
    rvm use ruby-1.9.3-p194@home
}
