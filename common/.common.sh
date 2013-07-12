CLICOLOR=1
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias sudo="sudo "
alias mkdir="mkdir -p"
alias rm="rm -v"
alias untar="tar -zxvf"
alias cdenv="cd ~/Repositories/env"
alias myenv="cd -P ~/.env"

alias ch="choose"

alias envup="(cdenv ; git pull ; git subup)"
alias envst="(cdenv ; git st)"


gr () {
    cd $(git rev-parse --show-toplevel)
}

search () {
    find . -name \*$1\*
}

delete_all () {
    find . -type f -name $1 -o -type l -name $1 -exec rm -f {} \;
}
alias remove_all="delete_all"

tc () {
    b=$1;
    if git checkout $b; then
        : true;
    else
        git checkout -b $b;
        git push origin $b;
        git branch -u origin/$b;
    fi
}

gd () {
    b=$1
    git branch -r -d origin/$b
    git branch -D $b
    git push origin :$b
}
