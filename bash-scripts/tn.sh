#!/bin/bash

# tmux new-session shortcut

echo "$1"
if [ -z "$1" ]; then
  printf "\nWrite name, starting location & group name\n"
  printf "(ex) tn sesname sdir groupname\n\n"
  exit 1
fi

echo "Creating "$3"/"$1" at "$2"..."
tmux new -s "$1" -c "$2" -t "$3"
