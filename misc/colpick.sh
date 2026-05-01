#!/bin/sh

var=$(niri msg pick-color | tail -n 1 | cut -d':' -f2 | sed 's/ //')
echo "$var"
echo "$var" | wl-copy
notify-send " " "<span color='$var' font='26px'><b>$var</b></span><span font='20'>Copied to clipboard</span>."
