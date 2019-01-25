alias s='git status -s'
alias a='git add .'
alias c='git commit -m "$1"'
alias ca='git add . && git commit -m "$1"'
alias p='git push'
#alias below fails on taking parameter in middle command
#workaround is by creating a function (see bash_fct_2_scr)
#alias cap='git add . && git commit -m "$1" && git push'
