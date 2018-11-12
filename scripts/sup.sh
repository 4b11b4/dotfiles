#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit
fi

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "${SCRIPT_DIR}/../submodule1" 
git status
git add -A
git commit -m "$1"
git push origin master

cd "${SCRIPT_DIR}/../submodule2" 
git status
git add -A
git commit -m "$1"
git push origin master

cd "${SCRIPT_DIR}/../submodule3" 
git status
git add -A
git commit -m "$1"
git push origin master

printf "\n\nUpdating Super Project\n\n" 
cd .. 
git status
git add -A
git commit -m "All Submodules Updated - $1"
git push origin master
