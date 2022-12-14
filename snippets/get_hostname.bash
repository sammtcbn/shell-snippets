#!/bin/bash
function get_hostname ()
{
    local hostname=$(hostname)
    echo ${hostname}
}

hostname=$(get_hostname)
echo hostname = ${hostname}
