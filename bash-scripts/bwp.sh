#!/bin/bash

# Alias for getting Bitwarden passwords 

if [ -z "$1" ]; then
  printf "\nEnter name of item to get password:\n"
  printf "(ex) bwp 'github'\n\n"
  exit 1
fi

printf "Copying "$1" password to clipboard using xclip\n"
eval "bw get password "$1" | tr -d '\n' | xclip -i -selection clipboard"
printf "Copying "$1" password to clipboard using clip.exe\n"
eval "bw get password "$1" | tr -d '\n' | clip.exe"
