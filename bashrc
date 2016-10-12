#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

codesearch() {
    find ./ | grep -e ".*\.[chS]$" | xargs grep -n $1
}

alias ls='ls --color=auto'
alias python='python2 '
alias pip='pip2 '
alias redshift='redshift2'
alias killredshift='while true; do killall redshift; done'
alias cs=codesearch
PS1='[\u@\h \W]\$ '
