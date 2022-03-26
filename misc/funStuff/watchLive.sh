#!/bin/sh

query=$(cat urls.txt | dmenu -p "Livestream URL: " -i -l 20)
url=$(youtube-dl -f best --get-url "$query")
mpv $url


