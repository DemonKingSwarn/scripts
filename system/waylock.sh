#!/bin/sh


swayidle -w \
    timeout 600 'systemctl suspend'
    before-sleep 'swaylock -i $HOME/hdd/pix/wall/01.jpg --ring-color 8218c4 --key-hl-color 3e0c60'
