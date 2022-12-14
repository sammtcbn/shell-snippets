#!/bin/bash
function is_internet_connected ()
{
    if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
        return 0
    else
        return 1
    fi
}

function show_internet_conn ()
{
    if is_internet_connected ; then
        echo "IPv4 is up"
    else
        echo "IPv4 is down"
    fi
}

show_internet_conn
