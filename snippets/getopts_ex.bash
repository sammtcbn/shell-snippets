#!/bin/bash

VERSION=1.0
DEBUG=0

function show_ver ()
{
   echo "version is ${VERSION}"
}

while getopts "dv" opt; do
    case $opt in
    d)
       DEBUG=1
       ;;
    v)
       show_ver
       ;;
    esac
done

if [ "${DEBUG}" == 1 ]; then
    echo "debug on"
else
    echo "debug off"
fi
