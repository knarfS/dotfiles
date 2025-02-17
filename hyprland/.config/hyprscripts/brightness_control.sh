#!/usr/bin/env bash

notify_brightness() {
    notify-send \
        --app-name="brigthness-control" \
        --expire-time=800 \
        --transient \
        --hint=string:synchronous:brigthness-control \
        --icon="${1}" \
        --hint=int:value:"${4}" \
        "${2}" \
        "${3}"
}

get_brightness() {
    brightness=$(brightnessctl g)
    brightness_max=$(brightnessctl m)
    echo $((brightness*100/brightness_max))
}

case $1 in
    up)
        brightnessctl s 5%+
        brightness=$(get_brightness)
        notify_brightness audio-volume-high "BRIGHTNESS" "Brightness increased to ${brightness}%" "${brightness}"
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
    down)
        brightnessctl s 5%-
        brightness=$(get_brightness)
        notify_brightness audio-volume-low "BRIGHTNESS" "Brightness decrease to ${brightness}%" "${brightness}"
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
esac
