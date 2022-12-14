#!/bin/bash
if command -v mosquitto_pub &> /dev/null; then
    echo mosquitto_pub found
else
    echo mosquitto_pub not found
fi
