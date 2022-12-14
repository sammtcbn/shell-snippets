#!/bin/bash
function get_free_space ()
{
    local free_space
    free_space=$(df -h --output=avail / | tail -n1 | xargs)
    echo ${free_space}
}

free_space=$(get_free_space)
echo free space = ${free_space}
