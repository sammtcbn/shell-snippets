#!/bin/bash
# refer to https://stackoverflow.com/questions/4665051/check-if-passed-argument-is-file-or-directory-in-bash

fn=${1}

if [ -z "${fn}" ]; then
    echo "parameter is empty!"
    exit 1
fi

if [[ -d ${fn} ]]; then
    echo "${fn} is a directory"
elif [[ -f ${fn} ]]; then
    echo "${fn} is a file"
else
    echo "${fn} is not valid"
fi
