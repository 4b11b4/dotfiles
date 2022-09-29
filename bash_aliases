# General
## Color
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias d='dir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

## Show file, dir
alias ld="ls -lv --group-directories-first"
alias lsd="ls -ld */"
alias l='ls -alF'                                                               

## Copy pipe ("|") [ex: echo '4b11b4' | v]
alias v='xclip -selection clipboard'

## Sound
### Alert long cmds [ex: 'sleep 10; alert']
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
### Noise
alias brownnoise='play -n synth brownnoise synth pinknoise mix synth sine amod 0.25 10'
alias whitenoise='play -q -c 2 -n synth brownnoise band -n 1600 1500 tremolo .1 30'
alias pinknoise='play -t sl -r48000 -c2 -n synth -1 pinknoise .1 80'

## Programs
alias vi='vim'
alias nr='node-red'
