#!/bin/sh
	
#exec doas sh -c "cat /sys/class/backlight/intel_backlight/max_brightness > /sys/class/backlight/intel_backlight/brightness"
printf "%s" "Enter the brightness amount: " && read -r bright
echo "$bright" | sudo tee /sys/class/backlight/intel_backlight/brightness 

