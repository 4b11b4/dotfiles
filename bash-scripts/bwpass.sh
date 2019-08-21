#!/bin/bash

#from https://gist.github.com/5681330ff4cc63ecb563f7eb6ce8dd11.git
#last update: 8/20/19

#Purpose:
#This script allows you to copy a password from your bitwarden database into your clipboard.
#It uses Dmenu to provide a dropdown type list.
#Requirements : bitwarden-cli package , dmenu , xclip.


#this export prompts you for your password every single time.
#If you do not want to write your password every single time, do export BW_SESSION=$(bw unlock YOURPASSWORD --raw) with YOURPASSWORD in plain text or as a env var ( not really safe though ...)
export BW_SESSION=$(bw unlock --raw)

bw get password $(bw list items --pretty | grep '"name":' | awk '{print $2}' | sed 's/[\",]//g' | dmenu -l 10) | xclip -selection clipboard

#relock the DB afterward to generate a new session ID everytime you access your DB
bw lock --quiet
