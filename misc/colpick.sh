#!/bin/sh

var=$(hyprpicker | awk '{print $1}')
echo "$var"
echo "$var" | tr -d '\n' | wl-copy
notify-send " " "<span color='$var' font='26px'><b>$var</b></span><span font='20'>Copied to clipboard</span>."
