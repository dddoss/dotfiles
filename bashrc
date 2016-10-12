#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias python='python2 '
alias pip='pip2 '
alias redshift='redshift '
alias xrandr-one='xrandr --output LVDS1 --auto --primary --output VGA1 --off'
alias xrandr-right='xrandr --output LVDS1 --auto --primary --output VGA1 --auto --right-of LVDS1'
alias xrandr-left='xrandr --output LVDS1 --auto --primary --output VGA1 --auto --left-of LVDS1'
alias xrandr-outonly='xrandr --output VGA1 --auto --primary'
PS1='[\u@\h \W]\$ '
