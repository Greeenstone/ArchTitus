#!/bin/sh
light -A 1 &&
	app="System"
	summary="Brightness increased to " &&
	light_level=$(printf "%.0f" $(light -G)) &&
	body="$summary$light_level"
	notify-send --urgency=low --expire-time=500 -a $app --icon=system "$body" -h string:x-canonical-private-synchronous:light -h int:value:$light_level
