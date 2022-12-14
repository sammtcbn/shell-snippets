#!/bin/bash

function myFunc()
{
    local count="1"
    for arg in ${@}; do
	echo "idx[${count}] : ${arg##*/}"
	(( count++ ))
    done
}

myFunc a b c

# Result:
# ./function_param.bash
# idx[1] : a
# idx[2] : b
# idx[3] : c
