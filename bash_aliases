# ls 
alias ld="ls -lv --group-directories-first"
alias ll='ls -alF'                                                             
alias la='ls -la'                                                               
alias l='ls -CF'                                                                                                                                                                                               
# colorful ls
if [ -x /usr/bin/dircolors ]; then                                             
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'                                                 
    alias d='dir --color=auto'                                                 
    alias v='vdir --color=auto'                                                
    alias grep='grep --color=auto'                                             
    alias fgrep='fgrep --color=auto'                                           
    alias egrep='egrep --color=auto'                                           
fi                                                                             



#1 ch = worth
alias vi='vim'


# Add an "alert" alias for long running commands.  Use like so:                
#   sleep 10; alert                                                            
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
