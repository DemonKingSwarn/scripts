#!/bin/bash

# Derived from Luke Smith's script.

# lol
DIRNAME=$HOME/.scripts/emojis/

chosen=$(cut -d ';' -f1 "$DIRNAME/emoji.txt" | dmenu | sed "s/ .*//")

[ -z "$chosen" ] && exit

printf "$chosen" | wl-copy
notify-send "$chosen  copied to clipboard"

