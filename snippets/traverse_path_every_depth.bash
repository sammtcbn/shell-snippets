#!/bin/bash

function traverse_path_every_depth()
{
    local pathstr=$1
    #echo path = $pathstr

    while true; do
        if [[ $pathstr = "/" ]]; then
            break
        fi

        if [ -d "${pathstr}" ]; then
            echo path = $pathstr
        fi

        pathstr=$(dirname $pathstr)
    done

}

#echo pwd is ${PWD}

traverse_path_every_depth ${PWD}
