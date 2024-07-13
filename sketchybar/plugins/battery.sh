#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

if [[ "$CHARGING" != "" ]]; then
  case "${PERCENTAGE}" in
    7[5-9]|[8-9][0-9]|100) ICON="󱊦"
    ;;
    5[0-9]|6[0-9]|7[0-4]) ICON="󱊥"
    ;;
    2[5-9]|3[0-9]|4[0-9]) ICON="󱊤"
    ;;
    *) ICON="󰢟"
  esac
else
  case "${PERCENTAGE}" in
    7[5-9]|[8-9][0-9]|100) ICON="󱊣"
    ;;
    5[0-9]|6[0-9]|7[0-4]) ICON="󱊢"
    ;;
    2[5-9]|3[0-9]|4[0-9]) ICON="󱊡"
    ;;
    *) ICON="󰂎"
  esac
fi

sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"
