#!/bin/bash

export SWWW_TRANSITION_FPS=165

swww init
img=$(ls -1  ~/.wallpaper/Afternoon/* | shuf -n 1)
~/.config/eww/scripts/material.py -i $img
sleep $((60 - $(date +%S)))

while true; do

    if (($(date +%S) == 0)); then

        case $(date +%H) in
            05 | 06 | 07 | 08 | 09 | 10 | 11 | 12 | 13 | 14 | 15 | 16) #If it's day

                if ! (($(date +%M) % 15)); then #Switch ever 4 minutes

                    img=$(ls -1  ~/.wallpaper/Day/* | shuf -n 1)
                    ~/.config/eww/scripts/material.py -i $img

                elif (($(date +%M) == 00)); then
                            img=$(ls -1  ~/.wallpaper/Night/* | shuf -n 1)
                            ~/.config/eww/scripts/material.py -i $img
                fi
        esac

        case $(date +%H) in
            17 | 18 | 19) #If it's afternoon

                if ! (($(date +%M) % 15)); then

                    img=$(ls -1  ~/.wallpaper/Afternoon/* | shuf -n 1)
                    ~/.config/eww/scripts/material.py -i $img

                elif (($(date +%M) == 00)); then

                    img=$(ls -1  ~/.wallpaper/Night/* | shuf -n 1)
                    ~/.config/eww/scripts/material.py -i $img

                fi
        esac

        case $(date +%H) in
            20 | 21 | 22 | 23 | 00 | 01 | 02 | 03 | 04) #If it's night

                if ! (($(date +%M) % 15)); then

                    img=$(ls -1  ~/.wallpaper/Night/* | shuf -n 1)
                    ~/.config/eww/scripts/material.py -i $img


                elif (($(date +%M) == 00)); then

                    img=$(ls -1  ~/.wallpaper/Night/* | shuf -n 1)
                    ~/.config/eww/scripts/material.py -i $img
                fi
        esac

        sleep 60
    fi
done
