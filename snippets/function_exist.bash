#!/bin/bash
function fun_a()
{
    echo aaa
}

if typeset -f fun_a > /dev/null; then
    echo fun_a exist
else
    echo fun_a NOT exist
fi


if typeset -f fun_b > /dev/null; then
    echo fun_b exist
else
    echo fun_b NOT exist
fi
