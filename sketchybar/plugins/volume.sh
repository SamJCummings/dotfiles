#!/bin/sh
# Not being used

if [ "$SENDER" = "volume_change" ]; then

  VOLUME=$((INFO/6))

  if [ "$VOLUME" -eq "0" ]; then
    ICON=""
  else
    ICON=""
  fi

  sketchybar --set "$NAME" icon="$ICON" 
fi
