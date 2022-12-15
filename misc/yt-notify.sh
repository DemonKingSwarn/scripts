#!/bin/sh

while true;
do
    latest=$(curl -s https://www.youtube.com/feeds/videos.xml\?channel_id\=UCI86prlqXhbkREDMTaORvLQ | grep videoId | head -n 1 | sed -e "s/<[^>]*>//g" | tr -d '[:space:]')
    
    if [ "$latest" != "$prev" ]; then
        notify-send "BBS Uploads" "Url: https://youtu.be/$latest"
        echo "https://youtu.be/$latest"
    fi

    prev=$latest
    sleep 4m;
done
