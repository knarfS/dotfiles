#!/usr/bin/env bash

case $1 in
    up)
        pamixer -u
        pamixer -i 5
        volume="$(pamixer --get-volume)"
        dunstify -t 1000 -r 2344 -h int:value:${volume} -i audio-volume-high "VOLUME" "Volume increased to ${volume}%" 
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
    down)
        pamixer -u
        pamixer -d 5
        volume="$(pamixer --get-volume)"
        dunstify -t 1000 -r 2344 -h int:value:${volume} -i audio-volume-low "VOLUME" "Volume decreased to ${volume}%"
        #canberra-gtk-play -i audio-volume-change -d "changevolume"
        ;;
    mute)
        pamixer -t
        muted="$(pamixer --get-mute)"
        if $muted ; then
            dunstify -t 1000 -r 2344 -i audio-volume-muted "VOLUME" "Muted"
        else
            dunstify -t 1000 -r 2344 -i audio-volume-high "VOLUME" "Not muted"
            #canberra-gtk-play -i audio-volume-change
        fi
        ;;
    mute-mic)
        pamixer --default-source -t
        muted="$(pamixer --default-source --get-mute)"
        if $muted ; then
            dunstify -t 1000 -r 2344 -i microphone-sensitivity-muted "MICROPHONE" "Muted"
        else
            dunstify -t 1000 -r 2344 -i microphone-sensitivity-high "MICROPHONE" "Not muted"
            #canberra-gtk-play -i audio-volume-change
        fi
t
        #dunstify ...
        ;;
esac

