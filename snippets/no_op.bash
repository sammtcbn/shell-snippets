#!/bin/bash
VAL=10

if [ "$VAL" -ge 10 ]; then
    :
elif ["$VAL" -le 5 ]; then
    echo "le 5"
fi

