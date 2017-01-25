#!/usr/bin/env bash
#
# Prepend text to file

prepend () {
    if [ -z "$1" ]; then echo "Usage: prepend \"text to prepend\" filename"; return; fi
    if [ -f "$2" ]; then
        { echo "$1"; cat "$2"; } > .prependtemp && mv -f .prependtemp "$2"
    else
        echo "'$2' is not a valid file"
    fi
}