#!/bin/bash

for i in {1..2}; do
    echo "Display ${i}"
    # get brightness and contrast from stdin
    echo "Input brightness: "
    read -r brightness
    echo "Input contrast: "
    read -r contrast
    ddcutil --display "${i}" setvcp 10 "${brightness}"
    ddcutil --display "${i}" setvcp 12 "${contrast}"
done

