#!/bin/bash
# Copyright (c) 2020, lackdaz
# All rights reserved.



echo "

"

SET_TIMER=32

# sleep 10
one_egg='🥚  '
two_eggs='🥚🥚 '
three_eggs='🥚🥚🥚'

one_hatching_chick='🐣🥚🥚'
two_hatching_chicks='🐣🐣🥚'
three_hatching_chicks='🐣🐣🐣'

one_hatched_chick='🐥🐣🐣'
two_hatched_chicks='🐥🐥🐣'
three_hatched_chicks='🐥🐥🐥'

last_two=' 🐥🐥'
last_one='  🐥'
none=''

seq 0 1 $SET_TIMER | while read i; do

    printf '\r%2s' ${i}
    echo -n 's '
    if [ $((i % 11)) -eq 0 ]; then
        echo -en "${one_egg}"
    elif [ $((i % 11)) -eq 1 ]; then
        echo -en "${two_eggs}"
    elif [ $((i % 11)) -eq 2 ]; then
        echo -en "${three_eggs}"
    elif [ $((i % 11)) -eq 3 ]; then
        echo -en "${one_hatching_chick}"
    elif [ $((i % 11)) -eq 4 ]; then
        echo -en "${two_hatching_chicks}"
    elif [ $((i % 11)) -eq 5 ]; then
        echo -en "${three_hatching_chicks}"
    elif [ $((i % 11)) -eq 6 ]; then
        echo -en "${one_hatched_chick}"
    elif [ $((i % 11)) -eq 7 ]; then
        echo -en "${two_hatched_chicks}"
    elif [ $((i % 11)) -eq 8 ]; then
        echo -en "${three_hatched_chicks}"
    elif [ $((i % 11)) -eq 9 ]; then
        echo -en "${last_two}"
    elif [ $((i % 11)) -eq 10 ]; then
        echo -en "${last_one}"
    else
        echo -en "${none}"
    fi
    echo -n '  '
    sleep 0.25
done

