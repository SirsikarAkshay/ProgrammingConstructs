#!/bin/bash -x

declare -A sounds
sounds[dog]="Bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "All values: ${sounds[@]}"
echo "All keys: ${!sounds[@]}"
echo "Dictionary length: ${#sounds[@]}"

unset sounds[dog] #remove dog
echo "${sounds[@]}"
