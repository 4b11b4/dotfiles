#!/bin/bash

# After repository is created on GitLab, you may run this script to
# initialize the repository.

git clone https://gitlab.com/folktek/"$1".git
cd "$1"
git submodule update --init --recursive
git submodule update --init --recursive # some versions of git need to repeat 
printf "Setting fp branch to master.\n"
cd fp && git checkout master
git submodule update --init --recursive
printf "Setting sym branch to master.\n"
cd ../sym && git checkout master
git submodule update --init --recursive
printf "Setting sym branch to master.\n"
cd ../sch && git checkout master #you may want to checkout a different branch
printf "\nYou may want a different sch branch. Here are the sch branches:\n"
git branch -va
cd ..
