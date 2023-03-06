#!/bin/sh

var=$(hyprpicker)
echo "$var"
echo "$var" | tr -d '\n' | wl-copy
notify-send " " "<span color='$var' font='26px'><b>$var</b></span><span font='20'>Copied to clipboard</span>."
