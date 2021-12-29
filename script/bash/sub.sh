#!/bin/bash

# After repository is created on GitLab, you may run this script to
# add the submodules.

git clone https://gitlab.com/folktek/"$1".git
cd "$1"
git submodule add https://gitlab.com/folktek/sch.git
git submodule add https://gitlab.com/folktek/fp.git
git submodule add https://gitlab.com/folktek/sym.git
git submodule update --init --recursive
git add .
git commit -m 'Initial commit'
git push
