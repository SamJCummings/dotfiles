#!/bin/sh
# Not Working

SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID: .*" | sed 's/^SSID: //')"

if [ "$SSID" = "" ]; then
  sketchybar --set $NAME icon=󰖪 
else
  sketchybar --set $NAME icon=󰖩 
fi
