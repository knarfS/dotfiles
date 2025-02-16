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

case $1 in
    up)
        brightnessctl s 5%+
        brightness="$(brightnessctl g)"
        brightness_max="$(brightnessctl m)"
        brigthness_percent=$((brightness/brightness_max*100))
        notify_brightness audio-volume-high "BRIGHTNESS" "Brightness increased to ${brigthness_percent}%" "$brigthness_percent"
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
    down)
        brightnessctl s 5%-
        brightness="$(brightnessctl g)"
        brightness_max="$(brightnessctl m)"
        brigthness_percent=$((brightness/brightness_max*100))
        notify_brightness audio-volume-low "BRIGHTNESS" "Brightness decrease to ${brigthness_percent}%" "$brigthness_percent"
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
esac
