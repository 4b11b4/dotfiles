#!/bin/bash

# Helper for dealing with registering session key export variable

#STDOUT="$(bw unlock)"
eval "exec > >(tee temp.txt)"
sleep 2
eval "bw unlock $1"
eval ""

sleep 2
STDOUT="$(cat ~/pub/dotfiles/temp.txt)"

printf "\n0. Bitwarden output:\n"
echo "$STDOUT"

printf "\n1. Retrive export command:\n"
# Basic bash string manipulation.
# WARNING: This method assumes output from `bw unlock` doesn't change...
EXPORT="$(echo "${STDOUT:120:-307}")"
echo "$EXPORT"

printf "\n2. Export session key.\n"
eval "$EXPORT"

printf "\n3. Check current BW_SESSION variable:\n"
eval "export -p | grep BW"

#printf "\n4. STDOUT again\n"
#STDOUT=`cat ~/pub/dotfiles/temp.txt`
