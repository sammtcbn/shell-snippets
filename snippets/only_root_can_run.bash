#!/bin/bash
set -eu

if [[ $UID -ne 0 ]]; then
    echo "this script requires root privileges" >&2
    exit 1
fi

# or in one line
[[ $UID -ne 0 ]] && { echo "this script requires root privileges" >&2; exit 1; }

echo "go ..." 
