#!/bin/bash

function getFileSize()
{
    local fsize=$(stat -c %s $1)
    echo $fsize
}

myfilesize=$(getFileSize /bin/bash)
echo /bin/bash file size is ${myfilesize} bytes

myfilesize=$(getFileSize /bin/ls)
echo /bin/ls file size is ${myfilesize} bytes
