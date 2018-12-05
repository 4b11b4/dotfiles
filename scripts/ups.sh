#!/bin/bash
echo "$1"
if [ -z "$1" ]; then
  printf "\nNeed to write commit message to push to ALL submodules.\n"
  printf "(ex) ups 'stuff'\n\n"
  exit 1
fi

echo "Are you sure you want to push to all submodules?"
echo "with commit message: "$1""
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
printf "\nIf you see that MAIN did not push changes...:\n"
printf "Check your current directory?\n"
printf "'ups' should be run from main repo folder\n"
printf "e.g. ~/folktek/roam/\n"
printf "If you DO have changes, push again from main repo folder\n"
