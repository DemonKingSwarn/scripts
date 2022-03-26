#!/bin/bash

SCRIPT_DIR=$HOME/.scripts/custom_emoji/

[ -z "$1" ] && "$SCRIPT_DIR/subscripts/run" || "$SCRIPT_DIR/subscripts/$@"

