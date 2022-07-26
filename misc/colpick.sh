#!/bin/sh

var=$(colorpicker --one-shot | awk '{print tolower($2)}')
echo "$var"
echo "$var" | tr -d '\n' | xclip -sel c
notify-send " " "<span color='$var' font='26px'><b>$var</b></span><span font='20'>Copied to clipboard</span>."
