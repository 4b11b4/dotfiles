#!/bin/bash

if [ "$#" -ne 1 ]; then
  printf "\nNeed to write commit message to push to ALL submodules.\n"
  printf "(ex) ups 'stuff'\n\n"
    exit
fi

echo "Are you sure you want to push to all submodules?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Pushing..."; break;;
        No ) exit;;
    esac
done

printf "\nSCH:\n" 
cd "sch" 
git add -A
git commit -m "$1"
git push 

printf "\nSYM:\n" 
cd "../sym" 
git add -A
git commit -m "$1"
git push

printf "\nFP:\n" 
cd "../fp" 
git add -A
git commit -m "$1"
git push

printf "\nMAIN:\n"
cd ..
git add -A
git commit -m "ups.sh: $1"
git push
