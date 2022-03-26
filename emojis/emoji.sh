#!/bin/bash

# Derived from Luke Smith's script.

# lol
DIRNAME=$HOME/.scripts/emojis/

chosen=$(cut -d ';' -f1 "$DIRNAME/emoji.txt" | rofi -dmenu -i -p "Emoji" | sed "s/ .*//")

[ -z "$chosen" ] && exit

printf "$chosen" | xclip -sel c
notify-send "\"$chosen\" copied to clipboard"

