#!/bin/sh

cleanup(){
    rm -rf $IMAGEDIR
}


IMAGEDIR=/tmp/uwu.png
grim $IMAGEDIR
convert $IMAGEDIR -scale 10% -scale 1000% $IMAGEDIR
hyprlock

trap cleanup EXIT INT TERM
