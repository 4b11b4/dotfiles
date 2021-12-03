#!/bin/bash

# Folktek
# Dealing With Submodules

# After pulling and recursively updating all submodules, you may use this
# script to checkout a specific schematic module and the fp and sym modules.

cd sch
git checkout "$1"
cd ../sym
git checkout master
cd ../fp
git checkout master
cd ..
echo "sch: "$1", fp and sym: master"
