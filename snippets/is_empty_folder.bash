#!/bin/bash

function is_empty_folder ()
{
    local path=$1

    if [ "$(ls -A $path)" ]; then
         return 1
    else
         return 0
    fi
}

if [ -z "${1}" ]; then
    echo "need parameter"
    exit 0
fi

inputStr=$1

if is_empty_folder $inputStr ; then
    echo "$inputStr is an empty folder"
else
    echo "$inputStr is not an empty folder"
fi

# Result:

# $ ./is_empty_folder.bash /tmp
# /tmp is not an empty folder
