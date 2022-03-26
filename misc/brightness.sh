#!/bin/sh
	
exec doas sh -c "cat /sys/class/backlight/intel_backlight/max_brightness > /sys/class/backlight/intel_backlight/brightness"


