#!/bin/bash

# Helper for dealing with registering session key export variable

# Save stdout directly to a variable
#STDOUT="$("bw unlock")"

# Initially I saved to a variable, instead of creating a temp file.
# This did not work immediately, so I saved to a file.
# It may still be possible to do save straight to a variable,
# as the reason the export variable was
# not persisting initially
# was because I needed to "source" this script.
# (eg) in bashrc: "source scr.sh" not "./scr.sh" 

FILE="~/pub/dotfiles/temp.txt"
if test -f "$FILE"; then
    echo "$FILE exist"
    eval "rm $FILE"
fi 

# Save stdout to file, read file to variable
eval "bw unlock > $FILE"
STDOUT="$(cat ~/pub/dotfiles/temp.txt)"

# Show output from Bitwarden CLI
#printf "\n0. Bitwarden output:\n"
#echo "$STDOUT"

printf "\n1. Retrive export command:\n"
# Basic bash string manipulation.
# WARNING: This method assumes output from `bw unlock` doesn't change...
EXPORT="$(echo "${STDOUT:120:-307}")"
echo "$EXPORT"

# Register session key variable with bash
printf "\n2. Export session key.\n"
eval "$EXPORT"

# Show that the key matches the registered export variables
printf "\n3. Check current BW_SESSION variable:\n"
eval "export -p | grep BW"

# Remove temporary file
eval "rm $FILE"
