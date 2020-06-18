#!/bin/bash

# Copyright (c) 2020, lackdaz
# All rights reserved.

### Contributions
# Written by Seth Loh Wei Chen github.com/lackdaz
# Contribution by John Rehwinkel gitlab.com/bodger
# Share with me the modifications in the comments below!!
###

SET_TIMER=10

echo "
Installation complete!
Run the code by calling <code_executable> within a terminal.
Rebooting in ${SET_TIMER}s... CTR+C to cancel 
"
clock_one='🕛'
clock_two='🕓'
clock_three='🕗'

seq ${SET_TIMER} -1 0 | while read i; do

    printf '\r%2s' ${i}
    echo -n 's '
    if [ $((i % 3)) -eq 1 ]; then
        echo -en "${clock_one}"
    elif [ $((i % 3)) -eq 0 ]; then
        echo -en "${clock_two}"
    else
        echo -en "${clock_three}"
    fi
    sleep 1
done

# Reboot or do something
# sudo reboot now
