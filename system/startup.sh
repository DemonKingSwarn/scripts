#!/usr/bin/env sh

# This is the startup script.

# cursor settings
xsetroot -cursor_name left_ptr 
#xinput set-prop "Logitech G102 LIGHTSYNC Gaming Mouse" "Coordinate Transformation Matrix" 0.7 0 0 0 0.7 0 0 0 1
#xset r rate 300 50

# keyboard settings
## Turns Caps Lock into Control, useful for Emacs
setxkbmap -option ctrl:nocaps
sxhkd &

# system
flameshot &
xss-lock -l $HOME/.scripts/system/lock.sh &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# rice
xrdb -merge ~/.Xresources &
#picom --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 --experimental-backends -b &
picom --experimental-backends -b &
dunst &
$HOME/.scripts/setbg/setbg &
$HOME/.config/polybar/launch.sh &
bspswallow &

#Updates dotfiles
# $HOME/.scripts/misc/autocommitpressure &

# D-EMACS
#emacs --daemon &

xrandr --auto

while true;
do
	sleep 1
done
