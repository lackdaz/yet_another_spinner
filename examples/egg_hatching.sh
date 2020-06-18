#!/bin/bash
# Copyright (c) 2020, lackdaz
# All rights reserved.



echo "

"

SET_TIMER=35

seq 0 1 $SET_TIMER | while read i; do

    printf '\r%2s' ${i}
    echo -n 's '
    if [ $((i % 12)) -eq 0 ]; then
        echo -en "🥚    "
    elif [ $((i % 12)) -eq 1 ]; then
        echo -en "🥚 🥚  "
    elif [ $((i % 12)) -eq 2 ]; then
        echo -en "🥚 🥚 🥚"
    elif [ $((i % 12)) -eq 3 ]; then
        echo -en "🐣 🥚 🥚"
    elif [ $((i % 12)) -eq 4 ]; then
        echo -en "🐣 🐣 🥚"
    elif [ $((i % 12)) -eq 5 ]; then
        echo -en "🐣 🐣 🐣"
    elif [ $((i % 12)) -eq 6 ]; then
        echo -en "🐥 🐣 🐣"
    elif [ $((i % 12)) -eq 7 ]; then
        echo -en "🐥 🐥 🐣"
    elif [ $((i % 12)) -eq 8 ]; then
        echo -en "🐥 🐥 🐥"
    elif [ $((i % 12)) -eq 9 ]; then
        echo -en "  🐥 🐥"
    elif [ $((i % 12)) -eq 10 ]; then
        echo -en "    🐥"
    else
        echo -en "     "
    fi
    echo -n '  '
    sleep 0.25
done

