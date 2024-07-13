#!/bin/sh

if [ "$SENDER" = "front_app_switched" ]; then

  if [ "$INFO" = "Firefox" ]; then
    INFO="Browser"
  elif [ "$INFO" = "Alacritty" ]; then
    INFO="Terminal"
  fi

  sketchybar --set "$NAME" label="$INFO"
fi
