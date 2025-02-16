#!/usr/bin/env bash

notify_volume() {
    notify-send \
        --app-name="volume-control" \
        --expire-time=800 \
        --transient \
        --hint=string:synchronous:volume-control \
        --icon="${1}" \
        --hint=int:value:"${4}" \
        "${2}" \
        "${3}"
}

notify_mute() {
    notify-send \
        --app-name="volume-control" \
        --expire-time=800 \
        --transient \
        --hint=string:synchronous:volume-control \
        --icon="${1}" \
        "${2}" \
        "${3}"
}

case $1 in
    up)
        pamixer -u
        pamixer -i 5
        volume="$(pamixer --get-volume)"
        notify_volume audio-volume-high "VOLUME" "Volume increased to ${volume}%" "$volume"
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
    down)
        pamixer -u
        pamixer -d 5
        volume="$(pamixer --get-volume)"
        notify_volume audio-volume-low "VOLUME" "Volume decrease to ${volume}%" "$volume"
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
    mute)
        pamixer -t
        muted="$(pamixer --get-mute)"
        if "$muted" ; then
            notify_mute audio-volume-muted "VOLUME" "Muted"
        else
            notify_mute audio-volume-high "VOLUME" "Not muted"
            #canberra-gtk-play -i audio-volume-change
        fi
        ;;
    mute-mic)
        pamixer --default-source -t
        muted="$(pamixer --default-source --get-mute)"
        if "$muted" ; then
            notify_mute microphone-sensitivity-muted "MICROPHONE" "Muted"
        else
            notify_mute microphone-sensitivity-high "MICROPHONE" "Not muted"
            #canberra-gtk-play -i audio-volume-change
        fi
        ;;
esac
