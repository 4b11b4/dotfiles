#!/bin/bash

printf "\nMAIN:\n" 
git status -s

printf "\nSCH:\n" 
cd "sch"
git status -s

printf "\nSYM:\n" 
cd "../sym" 
git status -s

printf "\nFP:\n" 
cd "../fp" 
git status -s

cd ..
