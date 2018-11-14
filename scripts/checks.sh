#!/bin/bash

printf "\nMAIN:\n" 
git status 

printf "\nSCH:\n" 
cd "sch"
git status

printf "\nSYM:\n" 
cd "../sym" 
git status

printf "\nFP:\n" 
cd "../fp" 
git status

cd ..
