#!/bin/bash

# Derived from Luke Smith's script.

# lol
DIRNAME=$HOME/.scripts/emojis/
RECENTS=$DIRNAME/recent.txt

chosen=$(cut -d ';' -f1 "$DIRNAME/emoji.txt" | rofi -dmenu | sed "s/ .*//")

[ -z "$chosen" ] && exit

printf "$chosen" | wl-copy
wl-paste >> $RECENTS
notify-send "$chosen  copied to clipboard"

