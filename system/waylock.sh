#!/bin/sh

cleanup(){
    rm -rf $IMAGEDIR
}


IMAGEDIR="$HOME/.cache/lock.png"
grim $IMAGEDIR
hyprlock

trap cleanup EXIT INT TERM
