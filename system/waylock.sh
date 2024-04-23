#!/bin/sh

cleanup(){
    rm -rf $IMAGEDIR
}


IMAGEDIR="$HOME/.cache/lock.png"
grim $IMAGEDIR
convert "$IMAGEDIR" -filter Gaussian -blur 0x5 blur.png
hyprlock

trap cleanup EXIT INT TERM
