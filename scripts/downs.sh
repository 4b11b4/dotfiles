#!/bin/bash

echo "$#"
if [ $# -ne 1 ]; then
  printf "\nEnter name of sch branch you want to checkout.\n"
  echo "(ex)   'downs roam'   |   'downs matter'"
  exit 1
else
  echo "Branch Name: $1"
  echo ""
fi


printf "\n---->\nDo you want to pull all submodules?\n"
printf "Check if you have changes first.\n"
printf "<----\n\n"
echo "Script assumes and checks out these branches:"
echo "- sch      : "$1""
echo "- fp & sym : master"
echo ""

select yn in "Y" "N"; do
    case $yn in
        Y ) break;;
        N ) exit;;
    esac
done

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf "\nMAIN:\n" 
git pull

printf "\nSCH:\n" 
cd "sch"
git checkout "$1"
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
printf "\n\nIf there are changes... you can commit now or later.\n"
