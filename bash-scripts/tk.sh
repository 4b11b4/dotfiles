#!/bin/bash

# tmux attach-session shortcut

echo "$1"
if [ -z "$1" ]; then
  printf "\nWrite session name to attach to.\n"
  printf "(ex) ta dot\n\n"
  exit 1
fi

echo "Loading "$1"..."
tmux kill-session -t "$1"
