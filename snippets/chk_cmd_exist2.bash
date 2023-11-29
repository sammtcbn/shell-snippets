#!/bin/bash
if command -v mosquitto_pub &> /dev/null; then
    echo mosquitto_pub found
else
    echo mosquitto_pub not found
fi

command -v pdftk >/dev/null 2>&1 || { echo >&2 "pdftk is required but not installed. Aborting."; exit 1; }
