#!/bin/bash
function is_integer_string() {
    local var="$1"
    if [[ "$var" =~ ^-?[0-9]+$ ]]; then
        # is an integer
        return 0
    else
        # not a integer
        return 1
    fi
}

function run_func ()
{
    local str="$1"
    if is_integer_string $str ; then
        echo "$1 is an integer"
    else
        echo "$1 is not an integer"
    fi
}

run_func "123"
run_func "abc"
run_func "-456"
run_func "12ab34"
run_func "12.34"
run_func "01298"
run_func "-1"
run_func "0"

