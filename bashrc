# 4b11b4 Custom Commands



## alias | ./bash_aliases
## fcts | ./bash_fct_2_scr



# This is the default bashrc (for Linux Mint 16.04?)
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples



# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac



# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth:erasedups
# append to the history file, don't overwrite it
shopt -s histappend
HISTSIZE=-1
HISTFILESIZE=10000
# After each command, save and reload history (for tmux)
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"



# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize



# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar



# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"



# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi



# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac



# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    if [[ ${EUID} == 0 ]] ; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
    fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$ '
fi
unset color_prompt force_color_prompt



# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"
    ;;
*)
    ;;
esac



# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'



# You may want aliases in separate file (eg: ~/.bash_aliases)
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# See /usr/share/doc/bash-doc/examples in the bash-doc package.



# Functions
## I use for running bash scripts in the /scripts dir.
## I don't know if this is the intended purpose...
## but it is one way to "install" a .sh script for
## global use in bash.
if [ -f ~/.bash_fct_2_scr ]; then
    . ~/.bash_fct_2_scr
fi



# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -x /usr/bin/mint-fortune ]; then
     /usr/bin/mint-fortune
fi



# Custom git g<command> autocompletion
## from github/mwhite: g<complete> style autocomplete for git
## commands rather than having to type 'git '
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
    . /usr/share/bash-completion/completions/git
fi

function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

#for al in `__git_aliases`; do
# from github/mwhite: dasong commented on Feb 4, 2019
# https://gist.github.com/mwhite/6887990#gistcomment-2828436
# As of git 2.18.0, __git_aliases has been replace with git --list-cmds=alias

#ub ver                                                                                                                                                                                                 
#cat /etc/issue | awk '{print $2}' | awk -F. '{print $1}'                      

distro=$(lsb_release -i | cut -f2)                                             
ver=$(lsb_release -r | cut -f2)                                                
main=$(echo $ver | cut -d . -f 1)
#echo "dis: ${distro,,}"                                                          
#echo "ver: ${ver}"                                                               
#echo "main: ${main}"

# written obviously
als=""
if [ "$main" == "18" ]; then
    als=$(__git_aliases)
fi
if [ "$main" == "20" ]; then
    als=$(git --list-cmds=alias)
fi
#echo "${als}"
for al in $als; do
    alias g$al="git $al"
    complete_func=_git_$(__git_aliased_command $al)
    function_exists $complete_fnc && __git_complete g$al $complete_func
done



#MUST BE AT THE END FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "~/.sdkman/bin/sdkman-init.sh" ]] && source "~/.sdkman/bin/sdkman-init.sh"



# Set vim as the default text editor
export EDITOR=vim



[ -f ~/.fzf.bash ] && source ~/.fzf.bash



# Use snaps first
export PATH="/snap/bin:$PATH"



# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# from ros install script
# (assumes 'ab' as user)
source /opt/ros/melodic/setup.bash
source /home/ab/interbotix_ws/devel/setup.bash
export ROS_IP=$(echo `hostname -I | cut -d" " -f1`)
if [ -z "$ROS_IP" ]; then
	export ROS_IP=127.0.0.1
fi
