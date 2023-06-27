#!/bin/sh

cleanup(){
    rm -rf $IMAGEDIR
}


ICON=$HOME/.config/i3/lock.png
IMAGEDIR=/tmp/uwu.png
grim $IMAGEDIR
convert $IMAGEDIR -scale 10% -scale 1000% $IMAGEDIR
convert $IMAGEDIR $ICON -gravity center -composite -matte $IMAGEDIR

#swayidle -w \
#    timeout 600 'swaylock -i $IMAGEDIR --ring-color 8218c4 --key-hl-color 3e0c60'
swaylock -u -i $IMAGEDIR 

trap cleanup EXIT INT TERM
