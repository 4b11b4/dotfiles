#!/bin/bash

# tmux new-session shortcut

echo "$1"
if [ -z "$1" ]; then
  printf "\nWrite name...\n"
  printf "(ex) tn sessionname\n\n"
  exit 1
fi

tmux new -s "$1"
