#!/bin/bash

# copies first argument string to system clipboard
function xclip_copy() {
    echo "$1" | xclip -selection clipboard
}
