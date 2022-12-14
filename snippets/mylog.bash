#!/bin/bash
function mylog()
{
    local prefixstr="service123"
    echo "$*"
    logger "${prefixstr}" - "$*"
}

mylog service start
mylog warning! disk lost!
