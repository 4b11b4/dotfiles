#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf "Updating SCH\n" 
cd "sch" 
git status
git add -A
git commit -m "$1"
git push 

printf "Updating SYM\n" 
cd "../sym" 
git status
git add -A
git commit -m "$1"
git push

printf "Updating FP\n" 
cd "../fp" 
git status
git add -A
git commit -m "$1"
git push

printf "Updating main\n" 
cd .. 
git status
git add -A
git commit -m "ALLSUB: $1"
git push
