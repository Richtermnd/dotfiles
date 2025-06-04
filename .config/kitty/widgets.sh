#!/usr/bin/env bash

kitty +kitten panel \
        --lines 8 --columns 20 \
        --margin-left 100 --margin-top 100 \
        --edge background \
        -o background_opacity=0 -o font_size=15 \
        sh -c 'cal -m; sleep infinity' &

kitty +kitten panel \
        --lines 8 --columns 20 \
        --margin-left 1450 --margin-top 100 \
        --edge background \
        -o background_opacity=0 -o font_size=15 \
        sh -c 'tty-clock -C 7' &
