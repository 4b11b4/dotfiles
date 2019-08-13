#!/bin/bash

# tmux kill-session shortcut

echo "$1"
if [ -z "$1" ]; then
  printf "\nWrite session name to kill.\n"
  printf "(ex) tk dot\n\n"
  exit 1
fi

echo 'Killing "$1"...'

select yn in "Y" "N"; do
    case $yn in
        Y ) break;;
        N ) exit;;
    esac
done

tmux kill-session -t "$1"
