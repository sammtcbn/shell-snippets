#!/bin/bash

echo "UID is $UID"
echo "EUID is $EUID"

if [[ $EUID -ne 0 ]]; then
    sudo head -1 /etc/shadow
else
    head -1 /etc/shadow
fi
