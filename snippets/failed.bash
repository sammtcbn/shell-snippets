#!/bin/bash
function failed()
{
    echo "$*" >&2
    exit 1
}

file=/etc/passwd3
[ -f ${file} ] || failed "no such file: ${file}"

dir=/etc
[ -d ${dir} ] || failed "no such directory: ${dir}"

echo "done"
