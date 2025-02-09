#!/bin/bash

display_id="$1"
brightness="$2"
contrast="$3"

# if display_id is not specified
if [ -z "$display_id" ]; then
    # exit program
    echo "display id is not specified"
    exit 1
fi

# if the brightness is specified
if [ -n "$brightness" ]; then
    ddcutil --display "${display_id}" setvcp 10 "${brightness}"
fi

# if the contrast is specified
if [ -n "$contrast" ]; then
    ddcutil --display "${display_id}" setvcp 12 "${contrast}"
fi
