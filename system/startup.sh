#!/usr/bin/env sh

# This is the startup script.

# cursor settings
xsetroot -cursor_name left_ptr 
#xset r rate 300 50

# keyboard settings
## Turns Caps Lock into Control, useful for Emacs
setxkbmap -option ctrl:nocaps
sxhkd &

# system
flameshot &
xss-lock -l $HOME/.scripts/system/lock.sh &

# rice
picom --experimental-backends -f -b &
dunst &
$HOME/.scripts/setbg/set_wallpaper &
$HOME/.config/polybar/launch.sh &
bspswallow &

# Updates dotfiles
$HOME/.scripts/misc/autocommitpressure &

while true;
do
	sleep 1
done
