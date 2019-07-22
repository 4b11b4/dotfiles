#!/bin/bash
# Helper for dealing with registering the session key

STDOUT="$(bw unlock)"

printf "\n1. Retrive export command:\n"
# Basic bash string manipulation.
# WARNING: This method assumes output from `bw unlock` doesn't change...
EXPORT="$(echo "${STDOUT:120:-307}")"
echo "$EXPORT"

printf "\n2. Export session key.\n"
eval "$EXPORT"

printf "\n3. Check current BW_SESSION variable:\n"
eval "export -p | grep BW"
