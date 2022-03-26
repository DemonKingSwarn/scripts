#!/bin/bash

# Displays a menu of scripts to choose from.

SCRIPT_DIR=$(dirname "$(readlink -f -- "$0")")


chosen=$(cat "$SCRIPT_DIR/scripts_menu.txt" | sed 's/.*\///' | rofi -dmenu )
"$SCRIPT_DIR/$(grep "$chosen" "$SCRIPT_DIR/scripts_menu.txt")"

