#!/bin/sh

man -k . | dmenu -l 10 | awk '{print $1}' | xargs -r man -Tpdf | zathura -
