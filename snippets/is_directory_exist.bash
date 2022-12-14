#!/bin/bash

function is_directory_exist()
{
    local path=$1

    if [ -d "$path" ]; then
         return 0
    else
         return 1
    fi
}

if [ -z "${1}" ]; then
    echo "need parameter"
    exit 0
fi

inputStr=$1

if is_directory_exist $inputStr ; then
    echo "$inputStr directory exist"
else
    echo "$inputStr directory does not exist"
fi

# Result:

# ./is_directory_exist.bash /etc
# /etc directory exist

# ./is_directory_exist.bash /123
# /123 directory does not exist
