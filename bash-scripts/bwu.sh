#!/bin/bash
# Helper for dealing with registering the session key

OUT_VAR="$(bw unlock)"

printf "\n\nOUT_VAR:\n"
echo "$OUT_VAR"

#CUT="$(echo "$OUT_VAR" | cut -d':' -f 2)"
#printf "\n\nCUT:\n"
#echo "$CUT"


printf "\n\nECHO STR:\n"
STR="$(echo "${OUT_VAR:120:-307}")"
echo "$STR"

printf "\n\nEVAL STR:\n"
eval "$SED"

#CUT2="$("echo $CUT | cut -d'"' -f 2 | cut -d'!' -f 2")"
