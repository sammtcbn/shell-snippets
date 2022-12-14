#!/bin/bash

CPU_VENDOR_ID=$(lscpu | grep "Vendor ID" | uniq | awk  '{print $3}')
echo "CPU Vendor ID is ${CPU_VENDOR_ID}"

CPU_MODEL_NAME=$(lscpu | grep 'Model name' | cut -f 2 -d ":" | awk '{$1=$1}1')
echo "CPU Model name is ${CPU_MODEL_NAME}"

if [ "$CPU_VENDOR_ID" = "GenuineIntel" ]; then
    if [[ $CPU_MODEL_NAME = *"11th Gen Intel"* ]]; then
        echo "11th Gen Intel CPU"
    else
	echo "Not 11th Gen Intel CPU"
    fi
fi

if [ "$CPU_VENDOR_ID" = "AuthenticAMD" ]; then
    echo "AMD CPU"
fi

if [ "$CPU_VENDOR_ID" = "ARM" ]; then
    if [[ $CPU_MODEL_NAME = *"Cortex-A53"* ]]; then
        echo "Cortex-A53 CPU"
    else
        echo "Not Cortex-A53 CPU"
    fi
fi

if [ "$CPU_VENDOR_ID" = "Nvidia" ]; then
    if [[ $CPU_MODEL_NAME = *"ARMv8 Processor rev 0 (v8l)"* ]]; then
        echo "ARMv8 CPU"
    else
        echo "Not ARMv8 CPU"
    fi
fi
