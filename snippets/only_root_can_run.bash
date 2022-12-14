#!/bin/bash
set -eu

if [[ $UID -ne 0 ]]; then
    echo "this script requires root privileges" >&2
    exit 1
fi

echo "go ..." 
