#!/bin/bash
ICON=$HOME/.config/i3/lock.png
IMAGEDIR=/tmp/uwu.png
scrot $IMAGEDIR
convert $IMAGEDIR -scale 10% -scale 1000% $IMAGEDIR
convert $IMAGEDIR $ICON -gravity center -composite -matte $IMAGEDIR
i3lock -u -i $IMAGEDIR
rm -rf /tmp/uwu.png
