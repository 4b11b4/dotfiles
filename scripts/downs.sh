#!/bin/bash

printf "Enter name of sch branch you want to checkout.\n"
echo "(ex)   'downs roam'   |   'downs matter'"

if [ -z "$1" ]; then
  printf "\n***\nNo branch name entered.\nUsing master branch.\n***\n"
  branch="master"
  #printf "\n***\nNo branch name entered.\nUsing name of dir.\n***\n"
  #branch=${PWD##*/}
else
  printf "\nBranch Name: $1"
  branch=$1
fi

printf "\n---->\nDo you want to pull in all submodules?\n"
printf "Check if you have changes first.\n"
printf "<----\n\n"
echo "Script will check out these branches:"
echo "- sch      : "$branch""
echo "- fp & sym : master"
echo

select yn in "Y" "N"; do
    case $yn in
        Y ) break;;
        N ) exit;;
    esac
done

printf "\nMAIN:\n" 
git pull

printf "\nSCH:\n" 
cd "sch"
git checkout master 
git pull

printf "\nSYM:\n" 
cd "../sym" 
git checkout master
git pull 

printf "\nFP:\n" 
cd "../fp" 
git checkout master
git pull

cd ..
printf "\nBACK TO MAIN:\n"
printf "If there are changes below...\nThe latest for each submodule was pulled, but main repo was tracking the submodule at an earlier commit. In other words, now you probably have a new version of fp or sym. In the worst case, kicad-libraries were updated and you may have to re-associate FPs.\n\n"
git status
printf "\n\nIF! there are changes... you can commit now or later.\n"
