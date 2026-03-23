#!/bin/bash

MONITOR="DP-2"
FORMAT_ICONS=("" "" "" "" "" "" "" "" "")

get_brightness() {
    current=$(xrandr --verbose | grep -A 10 "$MONITOR" | grep -i brightness | cut -f2 -d ' ')
    percent=$(echo "$current * 100" | bc -l | xargs printf "%.0f")
    echo "$percent"
}

set_brightness() {
    new_brightness=$1
    xrandr --output "$MONITOR" --brightness "$new_brightness"
}

get_icon() {
    percent=$1
    index=$(echo "$percent / 12.5" | bc -l | xargs printf "%.0f")
    echo "${FORMAT_ICONS[$index]}"
}

case "$1" in
    get)
        percent=$(get_brightness)
        icon=$(get_icon $percent)
        echo "$icon $percent%"
        ;;
    up)
        current=$(xrandr --verbose | grep -A 10 "$MONITOR" | grep -i brightness | cut -f2 -d ' ')
        new_brightness=$(echo "$current + 0.1" | bc)
        set_brightness "$new_brightness"
        ;;
    down)
        current=$(xrandr --verbose | grep -A 10 "$MONITOR" | grep -i brightness | cut -f2 -d ' ')
        new_brightness=$(echo "$current - 0.1" | bc)
        set_brightness "$new_brightness"
        ;;
esac
