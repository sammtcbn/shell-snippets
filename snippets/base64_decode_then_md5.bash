#!/bin/bash
fn=${1}

if [ -z "${fn}" ]; then
    echo "parameter is empty!"
    exit 1
fi

if [[ -f ${fn} ]]; then
    cat ${fn} | base64 -d | md5sum
else
    echo "${fn} is not valid"
fi
